@extends('admin.layout.app')

@section('heading' , 'Home Advertisement')
        


@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_home_ad_update') }}" method="post" enctype="multipart/form-data">
    @csrf
        <div class="row">
        
        <div class="col-6">
            <div class="card">
                <div class="card-body">
                   

                     
                       
                        
                        <div class="form-group mb-3">
                            <label>Existing Photo</label>
                            <div>
                                <img src="{{ asset('uploads/' . $home_ad_data->above_search_ad) }}"
                                 alt="" width="100%">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Change Photo</label>
                            <div>
                                <input type="file" name="above_search_ad">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>URL</label>
                            <input type="text" class="form-control" name="above_search_ad_url" value="{{ $home_ad_data->above_search_ad_url }}">
                        </div>

                        <div class="form-group mb-3">
                            <label>Status</label>
                            <select name="above_search_ad_status" class="form-control">
                                   <option value="Show" {{ ($home_ad_data->above_search_ad_status == 'Show') ? 'Selected' : '' }} >Show</option>
                                   <option value="Hide" {{ ($home_ad_data->above_search_ad_status == 'Hide') ? 'Selected' : '' }}>Hide</option>
                            </select>
                        </div>
                       
                   
                </div>
            </div>
        </div>


        <div class="col-6">
            <div class="card">
                <div class="card-body">
                  

                     
                       
                        
                        <div class="form-group mb-3">
                            <label>Existing Photo</label>
                            <div>
                                <img src="{{ asset('uploads/' . $home_ad_data->above_footer_ad) }}"
                                 alt="" width="100%">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Change Photo</label>
                            <div>
                                <input type="file" name="above_footer_ad">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>URL</label>
                            <input type="text" class="form-control" name="above_footer_ad_url" value="{{ $home_ad_data->above_footer_ad_url }}">
                        </div>

                        <div class="form-group mb-3">
                            <label>Status</label>
                            <select name="above_footer_ad_status" class="form-control">
                                   <option value="Show" {{ ($home_ad_data->above_footer_ad_status == 'Show') ? 'Selected' : '' }}>Show</option>
                                   <option value="Hide" {{ ($home_ad_data->above_footer_ad_status == 'Hide') ? 'Selected' : '' }}>Hide</option>
                            </select>
                        </div>
                       
                  
                </div>
            </div>
        </div>
        

    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
    </form>
</div>
@endsection