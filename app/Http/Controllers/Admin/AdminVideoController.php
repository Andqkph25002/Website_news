<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Video;
use Illuminate\Http\Request;

class AdminVideoController extends Controller
{
    public function show(){
        $videos = Video::get();
        return view('admin.Video.show' , compact('videos'));
    }
    public function create(){
        return view('admin.Video.create');
    }
    public function store(Request $request){
        $request->validate([
             'caption' => 'required',
             'video_id' => 'required',
        ]);
        $video = new Video();
        $video->video_id = $request->video_id;
        $video->caption = $request->caption;
        $video->save();
        return redirect()->route('admin_video_show')->with('success' , 'Data is added successfully !');
    }
    public function edit($id){
        $video_data = Video::where('id' , $id)->first();
        return view('admin.Video.edit' , compact('video_data'));
    }
    public function update(Request $request){
        $video =  Video::where('id' , $request->id)->first();
        $video->video_id = $request->video_id;
        $video->caption = $request->caption;
        $video->update();
        return redirect()->route('admin_video_show')->with('success' , 'Data is updated successfully !');
    }
    public function delete($id)
    {
        $video = Video::where('id', $id)->first();
     
        $video->delete();
      
        return redirect()->route('admin_video_show')->with('success', 'Data is updated successfully !');
    }
}
