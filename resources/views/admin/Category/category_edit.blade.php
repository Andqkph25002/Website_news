@extends('admin.layout.app')

@section('heading' , 'Category Update')
        

@section('button')

    <a href="{{ route('admin_category_show') }}" class="btn btn-primary">View</a>

@endsection

@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_category_update') }}" method="post" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="id" value="{{ $category->id }}">
        <div class="row">
        
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                
    
                        <div class="form-group mb-3">
                            <label>Category Name</label>
                            <div>
                                <input type="text" name="category_name" value="{{ $category->category_name }}" class="form-control">
                                @error('category_name')
<div class="text-danger">{{ $message }}</div>
@enderror
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Show on menu ?</label>
                            <select name="show_on_menu" class="form-control">
                                   <option value="Show" {{ ($category->show_on_menu == 'Show') ? 'Selected' : '' }} >Show</option>
                                   <option value="Hide" {{ ($category->show_on_menu == 'Hide') ? 'Selected' : '' }}>Hide</option>
                            </select>
                            @error('show_on_menu')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label>Category Order</label>
                            <div>
                                <input type="text" name="category_order" value="{{ $category->category_order }}" class="form-control">
                                @error('category_order')
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