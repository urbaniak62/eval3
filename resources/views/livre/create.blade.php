@extends('layout.template')

@section('content')

  <div class="well content">
    
    <h1>insert new book</h1>
    <br>
    <hr>
    <form action="{{route('livre.store')}}" methode="post">
    {{csrf_field()}}
    <div class="form-group">
    <label for="titre">titre :  </label>
    <input type="text" name="titre"   titre : >
    <hr>
    <label for="resume">résumé : </label>
    <hr>
    <textarea name="resume" id="" cols="20" rows="10"></textarea>
    <hr>
    <label for="auteur">auteur : </label>
    <input type="text" name="auteur"   auteur : >
    <hr>
    <label for="categorie">categorie : </label>
    <input type="text" name="categorie"   categorie : >
    <hr>
    <label for="date">date de publication : </label>
    <input type="date" name="date"   titre : >
    <hr>
    <label for="disponibilité">disponibilité : </label>
    <input type="text" name="disponibilité"  disponibilité : >
    <hr>
    <button type="submit">soummetre</button>
    </div> 
    </form> 
  </div>

        
 
@endsection