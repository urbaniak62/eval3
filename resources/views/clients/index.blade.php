@extends('layout.template')

@section('content')
    <h1>client list</h1>
@foreach($clients as $client)
    <div class="well">
            <h3><strong>name: </strong> {{$client->name}}</h3>
            <p><strong>age : {{$client->age}}</strong> </p>
            <h5><strong>adresse : {{$client->adresse}}</strong></h5>
            <h5><strong> : {{$client->livre_id}}</strong></h5>
           
    </div>
@endforeach
        <a href="../livre" class="btn btn-default">back</a>
        <a href="../clients/create" class="btn btn-primary">add new client</a>
 
@endsection