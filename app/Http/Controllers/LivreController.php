<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Livre;

class LivreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $livre = Livre::all();
        return view('livre.index')->with('livre',$livre);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
            
        return view('livre.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         
      $livre= new Livre;
      

      $livre->titre = $request->input ('titre');
      $livre->resume = $request->input ('resume');
      $livre->auteur = $request->input ('auteur');
      $livre->categorie = $request->input ('categorie');
      $livre->date = $request->input ('date');
      $livre->disponibilité = $request->input ('disponibilité');
      $livre->save();
      
      return view('../home'); 
                
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        $livre = Livre::find($id);
        return view('livre.show')->with('livre',$livre); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $livre = Livre::find($id);
        
        return view('livre.edit')->with('livre',$livre);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $livre= Livre::find($id);
        
  
        $livre->titre = $request->input ('titre');
        $livre->resume = $request->input ('resume');
        $livre->auteur = $request->input ('auteur');
        $livre->categorie = $request->input ('categorie');
        $livre->date = $request->input ('date');
        $livre->disponibilité = $request->input ('disponibilité');
        $livre->save();
        
        return view('../home');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
