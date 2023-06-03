@extends('admin.layout.app')

@section('heading' , 'Top Advertisement')
        


@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_top_ad_update') }}" method="post" enctype="multipart/form-data">
    @csrf
        <div class="row">
        
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                
                        
                        <div class="form-group mb-3">
                            <label>Existing Photo</label>
                            <div>
                                <img src="{{ asset('uploads/' . $top_ad_data->top_ad) }}"
                                 alt="" width="100%">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Change Photo</label>
                            <div>
                                <input type="file" name="top_ad">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>URL</label>
                            <input type="text" class="form-control" name="top_ad_url" value="{{ $top_ad_data->top_ad_url }}">
                        </div>

                        <div class="form-group mb-3">
                            <label>Status</label>
                            <select name="top_ad_status" class="form-control">
                                   <option value="Show" {{ ($top_ad_data->top_ad_status == 'Show') ? 'Selected' : '' }} >Show</option>
                                   <option value="Hide" {{ ($top_ad_data->top_ad_status == 'Hide') ? 'Selected' : '' }}>Hide</option>
                            </select>
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