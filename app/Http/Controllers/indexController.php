<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class indexController extends Controller
{
    public function index(){
        return view('home');
    
    }
    public function client(){
        return view('client');
    }

    public function show(){
        return view('livre/show');
    }
}