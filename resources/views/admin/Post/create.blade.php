@extends('admin.layout.app')

@section('heading' , 'Post Create')
        

@section('button')

    <a href="{{ route('admin_post_show') }}" class="btn btn-primary">View</a>

@endsection

@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_post_store') }}" method="post" enctype="multipart/form-data">
    @csrf
        <div class="row">
        
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                
    
                        <div class="form-group mb-3">
                            <label>Post title *</label>
                            <div>
                                <input type="text" name="post_title" class="form-control">
                                
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Post detail *</label>
                            <div>
                                <textarea name="post_detail" class="form-control snote" cols="30" rows="10"></textarea>
                               
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Post photo *</label>
                            <div>
                                <input type="file" name="post_photo" class="form-control">
                                
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Select Category *</label>
                            <div>
                                <select name="sub_category_id" class="form-control select2">
                                    @foreach ($sub_category as $item)
                                        <option value="{{ $item->id }}">{{ $item->sub_category_name }} ({{ $item->rCategory->category_name }})</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group mb-3">
                            <label>Is shareble ?</label>
                            <div>
                                <select name="is_share" class="form-control">
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Is comment ?</label>
                            <div>
                                <select name="is_comment" class="form-control">
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Tags</label>
                            <div>
                                <input type="text" name="tags" class="form-control">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Want to send this to subscriber ? </label>
                            <div>
                                <select name="subscriber_send_option" class="form-control">
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
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