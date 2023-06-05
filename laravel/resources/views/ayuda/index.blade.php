@extends('master' , ['mapa' => $mapa])
@section('title', 'Articulos de ayuda')
@section('content')

<!-- categorias -->
@include('home.secciones.categorias')
<!-- articulos -->
@include('home.secciones.articulos')


@endsection
