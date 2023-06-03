<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Photo;
use Illuminate\Http\Request;

class PhotoController extends Controller
{
    public function index(){
        $photo_data = Photo::paginate(8);
        return view('front.Photo.photo_gallery' , compact('photo_data'));
    }
}
