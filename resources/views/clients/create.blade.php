@extends('layout.template')

@section('content')
    <div class="well">

        <h1>create a new client</h1>

        <br>
        <hr>
        <form action="{{ route('client.store')" method="post">
        <label for="name">name</label>
        <br>
        <input type="text" class="form-control" name="name">
        <hr>
        <label for="age">age</label>
        <br>
        <input type="text" class="form-control" name="age">
        <hr>
        <label for="adresse">adresse</label>
        <br>
        <input type="text" class="form-control" name="adresse">
        <hr>
  
    <a href="../clients" class="btn btn-primary">submit</a>
    </div>
    </form>
@endsection