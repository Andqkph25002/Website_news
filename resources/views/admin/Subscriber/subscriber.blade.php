@extends('admin.layout.app')

@section('heading' , 'All Subscribers')



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
                                <th>Subscriber Email</th>
                              
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($subscribers as $item)
                            <tr>   
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $item->email }}</td>  
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