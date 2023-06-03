
@extends('admin.layout.app')

@section('heading' , 'Video Create')
        

@section('button')

    <a href="{{ route('admin_video_show') }}" class="btn btn-primary">View</a>

@endsection

@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_video_store') }}" method="post" enctype="multipart/form-data">
    @csrf
        <div class="row">
        
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="form-group mb-3">
                        <label>Video *</label>
                        <div>
                            <input type="text" name="video_id" class="form-control">
                            @error('video_id')
<div class="text-danger">{{ $message }}</div>
@enderror
                        </div>
                    </div>
    
                        <div class="form-group mb-3">
                            <label>Caption *</label>
                            <div>
                                <input type="text" name="caption" class="form-control">
                                @error('caption')
<div class="text-danger">{{ $message }}</div>
@enderror
                            </div>
                        </div>
                       
                       
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                </div>
            </div>
        </div>
    </div>
  
    </form>
</div>
@endsection