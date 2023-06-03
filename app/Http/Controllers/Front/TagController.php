<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    public function show($tag_name){
        $all_data =  Tag::where('tag_name' , $tag_name)->get();
        $all_post_id = [];
        foreach($all_data as $row){
            $all_post_id[] = $row->post_id;
        }
        $all_posts = Post::orderBy('id' , 'desc')->get();
        return view('front.Post.tag' , compact('all_post_id','all_posts' , 'tag_name'));
    }
}
