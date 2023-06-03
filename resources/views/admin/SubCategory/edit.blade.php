@extends('admin.layout.app')

@section('heading' , 'Sub Category Update')
        

@section('button')

    <a href="{{ route('admin_sub_category_show') }}" class="btn btn-primary">View</a>

@endsection

@section('main_content')
<div class="section-body">
    <form action="{{ route('admin_sub_category_update') }}" method="post" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="id" value="{{ $sub_category->id }}">
        <div class="row">
        
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                
    
                        <div class="form-group mb-3">
                            <label>Sub Category Name</label>
                            <div>
                                <input type="text" name="sub_category_name" value="{{ $sub_category->sub_category_name }}" class="form-control">
                                @error('sub_category_name')
<div class="text-danger">{{ $message }}</div>
@enderror
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Show on menu ?</label>
                            <select name="show_on_menu" class="form-control">
                                <option value="Show" {{ ($sub_category->show_on_menu == 'Show') ? 'Selected' : '' }} >Show</option>
                                <option value="Hide" {{ ($sub_category->show_on_menu == 'Hide') ? 'Selected' : '' }}>Hide</option>
                            </select>
                            @error('show_on_menu')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label>Show on home ?</label>
                            <select name="show_on_home" class="form-control">
                                <option value="Show" {{ ($sub_category->show_on_home == 'Show') ? 'Selected' : '' }} >Show</option>
                                <option value="Hide" {{ ($sub_category->show_on_home == 'Hide') ? 'Selected' : '' }}>Hide</option>
                            </select>
                            @error('show_on_home')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label>Category Order</label>
                            <div>
                                <input type="text" name="sub_category_order" value="{{ $sub_category->sub_category_order }}" class="form-control">
                                @error('sub_category_order')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label>Category Name</label>
                            <select name="category_id" class="form-control">
                                <option value="">Choose category</option>
                                   @foreach ($category as $item)
                                        <option value="{{ $item->id }}" {{ ($sub_category->category_id == $item->id) ? 'Selected' : '' }}>{{ $item->category_name }}</option>
                                   @endforeach
                            </select>
                            @error('category_id')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
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