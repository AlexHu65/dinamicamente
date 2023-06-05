@extends('covidmaster' , ['mapa' => $mapa])
@section('title', ((isset($slug) ? ucfirst($slug) : 'Contingencia sanitaria')))
@section('content')

<!-- articulos -->
@include('covid.articulos.secciones.articulos')


@endsection
