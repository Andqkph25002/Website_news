@extends('admin.layout.app')

@section('heading' , 'Video Create')

@section('button')

    <a href="{{ route('admin_video_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Add</a>

@endsection


@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        @csrf
                        <table class="table table-bordered" id="example1">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Video</th>
                                <th>Caption</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($videos as $item)
                            <tr>   
                                <td>{{ $loop->iteration }}</td>
                                <td>
                                    <iframe style="width:300px" width="560" height="315" src="https://www.youtube.com/embed/{{ $item->video_id }}" 
                                     title="YouTube video player" frameborder="0"
                                     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                     allowfullscreen></iframe>
                                </td>
                                <td>{{ $item->caption }}</td>
                                <td class="pt_10 pb_10">
                                    <a href="{{ route('admin_video_edit' , $item->id) }}" class="btn btn-primary">Edit</a>
                                    <a href="{{ route('admin_video_delete' , $item->id) }}" class="btn btn-danger" onClick="return confirm('Are you sure?');">Delete</a>
                                    {{-- <button onclick="delete_({{ $item->id }})" class="btn btn-danger">Delete</button> --}}
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