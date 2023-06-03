<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Photo;
use Illuminate\Http\Request;

class AdminPhotoController extends Controller
{
    public function show()
    {
        $photo_data = Photo::get();
        return view('admin.Photo.show', compact('photo_data'));
    }
    public function create()
    {
        return view('admin.Photo.create');
    }
    public function store(Request $request)
    {
        $request->validate([
            'caption' => 'required',
            'photo' => 'required|image|mimes:jpg,jpeg,png,gif'
        ]);
        $now = time();
        $ext = $request->file('photo')->extension();
        $final_name = 'photo_' . $now . '.' . $ext;
        $request->file('photo')->move(public_path('uploads/') , $final_name);
    
        $photo = new Photo();
        $photo->photo = $final_name;
        $photo->caption = $request->caption;
        $photo->save();
        return redirect()->route('admin_photo_show')->with('success' , 'Data is added successfully');

    }
    public function edit($id){
        $photo_data = Photo::where('id' , $id)->first();
        return view('admin.Photo.edit' , compact('photo_data'));
    }
    public function update(Request $request){
    
        $photo = Photo::where('id' , $request->id)->first();
        if($request->hasFile('photo')){
            $request->validate([
                'photo' => 'required|image|mimes:jpg,jpeg,png,gif'
            ]);
            unlink(public_path('uploads/' . $photo->photo));
            $now = time();
            $ext = $request->file('photo')->extension();
            $final_name = 'photo_' . $now . '.' . $ext;
            $request->file('photo')->move(public_path('uploads/') , $final_name);
            $photo->photo = $final_name;
        }
        $photo->caption = $request->caption;
        $photo->update();
        return redirect()->route('admin_photo_show')->with('success' , 'Data is update successfully');
    }
    public function delete($id)
    {
        $photo = Photo::where('id', $id)->first();
        unlink(public_path('uploads/' . $photo->photo));
        $photo->delete();
        return redirect()->route('admin_photo_show')->with('success', 'Data is updated successfully !');
    }
}
