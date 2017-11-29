@extends('layout.template')

@section('content')

  
        <div class="well">
            <h3><strong>titre : </strong> {{$livre->titre}}</h3>
            <p><strong>résumé : {{$livre->resume}}</strong> </p>
            <h5><strong>auteur : {{$livre->auteur}}</strong></h5>
            <h5><strong>categorie : {{$livre->categorie}}</strong></h5>
            <h6><strong><i>date de parution : {{$livre->date}}</i></strong></h6>
            <p><strong>{{$livre->disponibilité}}</strong></p>
        </div>
        <a href="../livre" class="btn btn-default">back</a>
 
@endsection