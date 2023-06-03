<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Video;
use Illuminate\Http\Request;

class VideoController extends Controller
{
    public function index(){
        $video_data = Video::paginate(8);
        return view('front.Video.video_gallery' , compact('video_data'));
    }
}
