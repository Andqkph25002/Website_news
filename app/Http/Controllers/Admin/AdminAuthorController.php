<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Mail\WebstieMail;
use App\Models\Author;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Validation\Rule;

class AdminAuthorController extends Controller
{
    public function show()
    {
        $authors = Author::get();
        return view('admin.Author.show', compact('authors'));
    }

    public function create()
    {
        return view('admin.Author.create');
    }
    public function store(Request $request){
        $author = new Author();
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:authors',
            'password' => 'required',
            'retype_password' => 'required|same:password'
        ]);
        if($request->hasFile('photo')){
            $request->validate([
                'photo' => 'image|mimes:jpg,jpeg,png,gif'
            ]);
            $now = time();
            $ext = $request->file('photo')->extension();
            $final_name = 'author_photo_' . $now . '.' . $ext;
            $request->file('photo')->move(public_path('uploads/') , $final_name);
            $author->photo = $final_name;
        }
        $author->name = $request->name;
        $author->email = $request->email;
        $author->password = Hash::make($request->password);
        $author->token = '';
        $author->save();
        $subject = 'Your account is created to the website';
        $message = 'Hi, your account is created successfully and now you can login to our system from the front end login page. Please go to this link: <br><br>';
        $message .= '<a href="'.route('login').'">';
        $message .= 'Click on this link';
        $message .= '</a>';
        $message .= '<br><br>Please see your password here and after login, change that immediately:<br>';
        $message .= $request->password;

        Mail::to($request->email)->send(new WebstieMail($subject , $message));

        return redirect()->route('admin_author_show')->with('success', 'Author account is created successfully.');
    }
    public function edit($id)
    {
        $author_data = Author::where('id',$id)->first();
        return view('admin.Author.edit', compact('author_data'));
    }
    public function update(Request $request){
        $id = $request->id;
        $author = Author::where('id' , $id)->first();
        $request->validate([
            'name' => 'required',
            'email' => [
                'required',
                'email',
                Rule::unique('authors')->ignore($author->id)
            ]
        ]);

        if($request->password!='') {
            $request->validate([
                'password' => 'required',
                'retype_password' => 'required|same:password'
            ]);
            $author->password = Hash::make($request->password);
        }

        if($request->hasFile('photo')) {
            $request->validate([
                'photo' => 'image|mimes:jpg,jpeg,png,gif'
            ]);

            unlink(public_path('uploads/'.$author->photo));

            $now = time();
            $ext = $request->file('photo')->extension();
            $final_name = 'author_photo_'.$now.'.'.$ext;
            $request->file('photo')->move(public_path('uploads/'),$final_name);
            $author->photo = $final_name;
        }
        
        $author->name = $request->name;
        $author->email = $request->email;
        $author->update();

        return redirect()->route('admin_author_show')->with('success', 'Data is updated successfully.');
    }
    public function delete($id)
    {
        $author = Author::where('id',$id)->first();
        if($author->photo != NULL) {
            unlink(public_path('uploads/'.$author->photo));
        }
        $author->delete();

        return redirect()->route('admin_author_show')->with('success', 'Author is deleted successfully.');

    }
}
