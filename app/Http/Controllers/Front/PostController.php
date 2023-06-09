<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function detail($id){
        $tag_data = Tag::where('post_id' , $id)->get();
        $post_detail = Post::with('rSubCategory')->where('id' , $id)->first();
        if($post_detail->author_id == 0){
            $user_data = Admin::where('id' , $post_detail->admin_id)->first();
        }else{

        }
        //Update page view count
        $new_value = $post_detail->visitors+1;
        $post_detail->visitors = $new_value;
        $post_detail->update();

        $post_array = Post::where('sub_category_id' , $post_detail->sub_category_id)->get();
        return view('front.Post.post_detail' , compact('post_detail','user_data' , 'tag_data','post_array'));
    }
}
