@extends('master' , ['mapa' => $mapa])
@section('title', 'Inicio')
@section('content')

<!-- categorias -->
@include('home.secciones.categorias')
<!-- noticias de interes -->
@include('home.secciones.noticias')
<!-- articulos -->
@include('home.secciones.articulos')


@endsection
