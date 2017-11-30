@extends('layout.template')

@section('content')

  <div class="well content">
    
    <h1>edit : {{$livre->titre}}</h1>
    <br>
    <hr>
    <form action="" methode="post">
    
    <div class="form-group">
    <label for="titre">titre :   </label>
    <input type="text" name="titre"   titre : value="{{$livre->titre}}" >
    <hr>
    <label for="resume">résumé : </label>
    <hr>
    <textarea name="resume" id="" cols="88" rows="10">{{$livre->resume}}</textarea>
    <hr>
    <label for="auteur">auteur : </label>
    <input type="text" name="auteur"   auteur : value="{{$livre->auteur}}" >
    <hr>
    <label for="categorie">categorie : </label>
    <input type="text" name="categorie"   categorie :  value="{{$livre->categorie}}">
    <hr>
    <label for="date">date de publication : </label>
    <input type="date" name="date"   date : value="{{$livre->date}}" >
    <hr>
    <label for="disponibilité">disponibilité : </label>
    <input type="text" name="disponibilité"  disponibilité : value="{{$livre->disponibilité}}" >
    <hr>
    <input type="hidden" methode="PUT">
    <button type="submit"><a href="/livre">soummetre</a></button>
    </div> 
    </form> 
  </div>

        
 
@endsection