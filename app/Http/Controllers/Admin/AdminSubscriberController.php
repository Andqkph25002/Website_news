<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Mail\WebstieMail;
use App\Models\Subscriber;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class AdminSubscriberController extends Controller
{
    public function show_all(){
        $subscribers = Subscriber::where('status' , 'Active')->get();
        return view('admin.Subscriber.subscriber' , compact('subscribers'));
    }
    public function send_email(){
        return view('admin.Subscriber.subscriber_send_email');
    }
    public function send_email_submit(Request $request){
        $request->validate([
            'subject' => 'required',
            'message' => 'required'
        ]);

        $subject = $request->subject;
        $message = $request->message;

        $subscribers = Subscriber::where('status','Active')->get();
        foreach($subscribers as $row) {
            Mail::to($row->email)->send(new WebstieMail($subject , $message));
        }

        return redirect()->back()->with('success', 'Email is sent successfully.');
    }
}
