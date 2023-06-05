@extends('master' , ['mapa' => $mapa])
@section('title', ((isset($articulo) ? $articulo->titulo : 'Artículos de ayuda')))
@section('content')


<!-- categorias -->
@include('articulos.secciones.categorias')
<!-- articulos -->
@include('articulos.secciones.articulo')


@endsection
