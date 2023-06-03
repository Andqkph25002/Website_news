@extends('admin.layout.app')

@section('heading' , 'Sub Category List')

@section('button')

    <a href="{{ route('admin_sub_category_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Add</a>

@endsection


@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="example1">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Sub Category name</th>
                                <th>Show on menu ?</th>
                                <th>Show on home ?</th>
                                <th>Sub Category Order</th>
                                <th>Category Name</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($subCategory as $item)
                            <tr>   
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $item->sub_category_name }}</td>
                                <td>{{ $item->show_on_menu }}</td>
                                <td>{{ $item->show_on_home }}</td>
                                <td>{{ $item->sub_category_order }}</td>
                                <td>{{ $item->rCategory->category_name }}</td>
                                <td class="pt_10 pb_10">
                                    <a href="{{ route('admin_sub_category_edit' , $item->id) }}" class="btn btn-primary">Edit</a>
                                    <a href="{{ route('admin_sub_category_delete' , $item->id) }}" class="btn btn-danger" onClick="return confirm('Are you sure?');">Delete</a>
                                </td>
                            </tr>
                            @endforeach
                                
                          
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection