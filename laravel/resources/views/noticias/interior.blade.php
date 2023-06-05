@extends('master' , ['mapa' => $mapa])
@section('title', ((isset($articulo) ? $articulo->titulo : 'Noticias')))
@section('content')


<!-- categorias -->
@include('noticias.secciones.categorias')
<!-- articulos -->
@include('noticias.secciones.articulo')


@endsection
