@extends('admin.layout.app')

@section('heading' , 'Post Update')
        

@section('button')

    <a href="{{ route('admin_post_show') }}" class="btn btn-primary">View</a>

@endsection

@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_post_update') }}" method="post" enctype="multipart/form-data">
    @csrf
        <div class="row">
        <input type="hidden" name="id" value="{{ $post->id }}">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                
    
                        <div class="form-group mb-3">
                            <label>Post title *</label>
                            <div>
                                <input type="text" name="post_title" value="{{ $post->post_title }}" class="form-control">
                                
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Post detail *</label>
                            <div>
                                <textarea name="post_detail"  class="form-control snote" cols="30" rows="10">{{ $post->post_detail }}</textarea>
                               
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Photo *</label>
                            <div>
                                 <img src="{{ asset('uploads/' . $post->post_photo) }}" width="200" alt="">
                                
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
                                <select name="sub_category_id" class="form-control">
                                    @foreach ($sub_category as $item)
                                        <option value="{{ $item->id }}" 
                                            {{ ($post->sub_category_id == $item->id) ? 'selected' : '' }}
                                            >{{ $item->sub_category_name }} ({{ $item->rCategory->category_name }})</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group mb-3">
                            <label>Is shareble ?</label>
                            <div>
                                <select name="is_share" class="form-control">
                                    <option value="1" {{ ($post->is_share == 1) ? 'selected' : '' }}>Yes</option>
                                    <option value="0" {{ ($post->is_share == 0) ? 'selected' : '' }}>No</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Is comment ?</label>
                            <div>
                                <select name="is_comment" class="form-control">
                                    <option value="1" {{ ($post->is_comment == 1) ? 'selected' : '' }}>Yes</option>
                                    <option value="0" {{ ($post->is_comment == 0) ? 'selected' : '' }}>No</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Existing Tags</label>
                            <div>
                               <table class="table table-bordered">
                                @foreach ($existing_tags as $item)
                                    <tr>
                                        <td>{{ $item->tag_name }}</td>
                                        <td>
                                            <a href="{{ route('admin_post_tag_delete' , [$item->id , $post->id]) }}" onClick="return confirm('Are you sure?');">Delete</a>
                                        </td>
                                    </tr>
                                @endforeach
                               </table>
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Tags</label>
                            <div>
                                <input type="text" name="tags" class="form-control">
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