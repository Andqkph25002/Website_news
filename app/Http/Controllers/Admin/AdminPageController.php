<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Page;
use Illuminate\Http\Request;

class AdminPageController extends Controller
{
    public function about()
    {
        $page_data = Page::where('id', 1)->first();
        return view('admin.Pages.page_about', compact('page_data'));
    }
    public function update(Request $request)
    {
        $request->validate([
            'about_title' => 'required',
            'about_detail' => 'required'
        ]);
        $page = Page::where('id', 1)->first();
        $page->about_title = $request->about_title;
        $page->about_detail = $request->about_detail;
        $page->about_status = $request->about_status;
        $page->update();
        return redirect()->route('admin_page_about')->with('success', 'Data is updated successfully');
    }
    public function faq()
    {
        $page_data = Page::get();
        return view('admin.Pages.page_faq', compact('page_data'));
    }

    public function faq_update(Request $request)
    {
        $request->validate([
            'faq_title' => 'required'
        ]);

        $page = Page::where('id', $request->id)->first();
        $page->faq_title = $request->faq_title;
        $page->faq_detail = $request->faq_detail;
        $page->faq_status = $request->faq_status;
        $page->update();

        return redirect()->route('admin_page_faq')->with('success', 'Data is updated successfully.');
    }
    public function login()
    {
        $page_data = Page::get();
        return view('admin.Pages.page_login', compact('page_data'));
    }

    public function login_update(Request $request)
    {
        $request->validate([
            'login_title' => 'required'
        ]);

        $page = Page::where('id', $request->id)->first();
        $page->login_title = $request->login_title;
        $page->login_status = $request->login_status;
        $page->update();

        return redirect()->route('admin_page_login')->with('success', 'Data is updated successfully.');
    }
    public function contact()
    {
        $page_data = Page::get();
        return view('admin.Pages.page_contact', compact('page_data'));
    }

    public function contact_update(Request $request)
    {
        $request->validate([
            'contact_title' => 'required'
        ]);

        $page = Page::where('id',$request->id)->first();
        $page->contact_title = $request->contact_title;
        $page->contact_detail = $request->contact_detail;
        $page->contact_map = $request->contact_map;
        $page->contact_status = $request->contact_status;
        $page->update();

        return redirect()->route('admin_page_contact')->with('success', 'Data is updated successfully.');

    }
}
