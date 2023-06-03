@extends('admin.layout.app')

@section('heading' , 'Sidebar Advertisement Update')
        

@section('button')

    <a href="{{ route('admin_sidebar_ad_show') }}" class="btn btn-primary">View</a>

@endsection

@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_sidebar_ad_update') }}" method="post" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="id" value="{{ $sidebar_ad_data->id }}">
        <div class="row">
        
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                
    
                        <div class="form-group mb-3">
                            <label>Existing Photo</label>
                            <div>
                                <img src="{{ asset('uploads/' . $sidebar_ad_data->sidebar_ad) }}" alt="" width="600">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Change Photo</label>
                            <div>
                                <input type="file" name="sidebar_ad">
                            </div>
                        </div>


                        <div class="form-group mb-3">
                            <label>URL</label>
                            <input type="text" class="form-control" name="sidebar_ad_url" value="{{ $sidebar_ad_data->sidebar_ad_url }}">
                        </div>

                        <div class="form-group mb-3">
                            <label>Location</label>
                            <select name="sidebar_ad_location" class="form-control">
                                   <option value="Top" {{ ($sidebar_ad_data->sidebar_ad_location == 'Top') ? 'Selected' : '' }}>Top</option>
                                   <option value="Bottom" {{ ($sidebar_ad_data->sidebar_ad_location == 'Bottom') ? 'Selected' : '' }}>Bottom</option>
                            </select>
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