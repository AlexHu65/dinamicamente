@extends('master' , ['mapa' => $mapa])
@section('title', 'Artículos de ayuda')
@section('content')

<!-- categorias -->
@include('articulos.secciones.categorias')
<!-- articulos -->
@include('articulos.secciones.articulos')


@endsection
