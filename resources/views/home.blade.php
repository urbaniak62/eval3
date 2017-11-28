@extends('layout.template')

@section('content')
    <h1>my library</h1>
    <div class="well">
        @foreach($livre as $liv)
            <h3>{{$liv}}</h3>
        @endforeach
    </div>
@endsection