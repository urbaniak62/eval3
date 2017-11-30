@extends('layout.template')

@section('content')

  
        @foreach($livre as $liv)
        <div class="well">
            <h3><strong>titre :</strong> {{$liv->titre}}</h3>
            <p><strong><a href="livre/{{$liv->id}}">résumé : click here.</a></strong> </p>
            <h5><strong>auteur : {{$liv->auteur}}</strong></h5>
            <h5><strong>categorie : {{$liv->categorie}}</strong></h5>
            <h6><strong><i>date de parution : {{$liv->date}}</i></strong></h6>
            <p><strong>{{$liv->disponibilité}}</strong></p>
        </div>
        
        @endforeach
        
@endsection