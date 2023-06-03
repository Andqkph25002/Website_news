



@extends('admin.layout.app')

@section('heading' , 'Photo Create')
        

@section('button')

    <a href="{{ route('admin_photo_show') }}" class="btn btn-primary">View</a>

@endsection

@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_photo_update') }}" method="post" enctype="multipart/form-data">
    @csrf
        <div class="row">
        <input type="hidden" name="id" value="{{ $photo_data->id }}">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="form-group mb-3">
                        <label>Photo *</label>
                        <div>
                             <img src="{{ asset('uploads/' . $photo_data->photo) }}" width="200" alt="">
                            
                        </div>
                    </div>

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
                                <input type="text" value="{{ $photo_data->caption }}" name="caption" class="form-control">
                                @error('caption')
<div class="text-danger">{{ $message }}</div>
@enderror
                            </div>
                        </div>
                       
                       
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                </div>
            </div>
        </div>
    </div>
  
    </form>
</div>
@endsection