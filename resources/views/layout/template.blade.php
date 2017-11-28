<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        <link rel="stylesheet" href="{{asset('css/style.css')}}">

        <title>my library</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow|Noto+Sans" rel="stylesheet"> 


        
    </head>
    <body>
        @include('inc.nav')
        <div class="container">
            @yield('content')
        </div>
    </body>
</html>