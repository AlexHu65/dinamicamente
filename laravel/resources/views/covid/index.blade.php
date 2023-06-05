@extends('covidmaster' , ['mapa' => $mapa])
@section('title', 'Covid contingencia sanitaria')
@section('content')

<!-- categorias -->
@include('covid.secciones.categorias')

@endsection
