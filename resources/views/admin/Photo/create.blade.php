



@extends('admin.layout.app')

@section('heading' , 'Photo Create')
        

@section('button')

    <a href="{{ route('admin_photo_show') }}" class="btn btn-primary">View</a>

@endsection

@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_photo_store') }}" method="post" enctype="multipart/form-data">
    @csrf
        <div class="row">
        
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="form-group mb-3">
                        <label>Photo *</label>
                        <div>
                            <input type="file" name="photo" class="form-control">
                            @error('photo')
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