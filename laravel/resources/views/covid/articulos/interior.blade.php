@extends('covidmaster' , ['mapa' => $mapa])
@section('title', ((isset($articulo) ? $articulo->titulo : 'Contingencia sanitaria')))
@section('content')

<!-- articulos -->
@include('covid.articulos.secciones.articulo')


@endsection
