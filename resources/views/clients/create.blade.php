@extends('layout.template')

@section('content')
    <div class="well">

        <h1>create a new client</h1>

        <br>
        <hr>
    
        <label for="name">name</label>
        <br>
        <input type="text" name="name">
        <hr>
        <label for="age">age</label>
        <br>
        <input type="text" name="age">
        <hr>
        <label for="adresse">adresse</label>
        <br>
        <input type="text" name="adresse">
        <hr>
    </div>
    <a href="../clients" class="btn btn-primary">submit</a>

@endsection