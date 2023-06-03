<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Mail\WebstieMail;
use App\Models\Post;
use App\Models\SubCategory;
use App\Models\Subscriber;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class AdminPostController extends Controller
{
    public function show()
    {
        $posts = Post::with('rSubCategory.rCategory')->get();
        return view('admin.Post.show', compact('posts'));
    }
    public function create()
    {
        $sub_category = SubCategory::with('rCategory')->get();

        return view('admin.Post.create', compact('sub_category'));
    }
    public function store(Request $request)
    {
        $request->validate([
            'post_title' => 'required',
            'post_detail' => 'required',
            'post_photo' => 'required|image|mimes:jpg,jpeg,png,gif'
        ]);

        $q = DB::select("SHOW TABLE STATUS LIKE 'posts'");
        $ai_id = $q[0]->Auto_increment;

        $now = time();
        $ext = $request->file('post_photo')->extension();
        $final_name = 'post_photo_' . $now . '.' . $ext;
        $request->file('post_photo')->move(public_path('uploads/'), $final_name);

        $post = new Post();
        $post->sub_category_id = $request->sub_category_id;
        $post->post_title = $request->post_title;
        $post->post_detail = $request->post_detail;
        $post->post_photo = $final_name;
        $post->visitors = 1;
        $post->author_id = 0;
        $post->admin_id = Auth::guard('admin')->user()->id;
        $post->is_share = $request->is_share;
        $post->is_comment = $request->is_comment;
        $post->save();
        
        if ($request->tags != '') {
            $tags_array_new = [];
            $tags_array = explode(',', $request->tags);
            for ($i = 0; $i < count($tags_array); $i++) {
                $tags_array_new[] = trim($tags_array[$i]);
            }
            $tags_array_new = array_values(array_unique($tags_array_new));
            for ($i = 0; $i < count($tags_array_new); $i++) {

                $tag = new Tag();
                $tag->post_id = $ai_id;
                $tag->tag_name = trim($tags_array[$i]);
                $tag->save();
            }
        }

        if($request->subscriber_send_option == 1){
            $subject = 'A new post is published';
            $message = 'Hi, A new post is published into our website. Please go to see that post:<br>';
            $message .= '<a target="_blank" href="'.route('news_detail',$ai_id).'">';
            $message .= $request->post_title;
            $message .= '</a>';
           
           $subscribers =  Subscriber::where('status' , 'Active')->get();
           foreach($subscribers as $row){
                 Mail::to($row->email)->send(new WebstieMail($subject , $message));
           }
        }

        return redirect()->route('admin_post_show')->with('success', 'Data is added successfully !');
    }



    public function edit($id)
    {
        $sub_category = SubCategory::with('rCategory')->get();
        $post = Post::where('id', $id)->first();
        $existing_tags = Tag::where('post_id', $id)->get();
        return view('admin.Post.edit', compact('sub_category', 'post', 'existing_tags'));
    }
    public function update(Request $request)
    {
        $request->validate([
            'post_title' => 'required',
            'post_detail' => 'required',
        ]);
        $post = Post::where('id', $request->id)->first();
        if ($request->hasFile('post_photo')) {
            $request->validate([
                'post_photo' => 'required|image|mimes:jpg,jpeg,png,gif'
            ]);
            unlink(public_path('uploads/' . $post->post_photo));
            $now = time();
            $ext = $request->file('post_photo')->extension();
            $final_name = 'post_photo_' . $now . '.' . $ext;
            $request->file('post_photo')->move(public_path('uploads/'), $final_name);
            $post->post_photo = $final_name;
        }
        $post->sub_category_id = $request->sub_category_id;
        $post->post_title = $request->post_title;
        $post->post_detail = $request->post_detail;
        $post->visitors = 1;
        $post->author_id = 0;
        $post->admin_id = Auth::guard('admin')->user()->id;
        $post->is_share = $request->is_share;
        $post->is_comment = $request->is_comment;
        $post->update();
        if ($request->tags != '') {
            $tags_array = explode(',', $request->tags);
            for ($i = 0; $i < count($tags_array); $i++) {
                $total = Tag::where('post_id', $request->id)->where('tag_name', trim($tags_array[$i]))->count();
                if (!$total) {
                    $tag = new Tag();
                    $tag->post_id = $request->id;
                    $tag->tag_name = trim($tags_array[$i]);
                    $tag->save();
                }
            }
        }

        return redirect()->route('admin_post_show')->with('success', 'Data is updated successfully !');
    }
    public function delete($id)
    {
        $post = Post::where('id', $id)->first();
        unlink(public_path('uploads/' . $post->post_photo));
        $post->delete();
        Tag::where('post_id', $id)->delete();
        return redirect()->route('admin_post_show')->with('success', 'Data is updated successfully !');
    }
    public function TagDelete($id, $id1)
    {
        $tag = Tag::where('id', $id)->first();
        $tag->delete();
        return redirect()->route('admin_post_edit', $id1)->with('success', 'Data is deleted successfully !');
    }
}
