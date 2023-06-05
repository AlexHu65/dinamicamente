@extends('master' , ['mapa' => $mapa])
@section('title', 'Noticias')
@section('content')

<!-- categorias -->
@include('noticias.secciones.categorias')
<!-- articulos -->
@include('noticias.secciones.articulos')

@endsection
