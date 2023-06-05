@extends('master',['mapa' => $mapa,'marcas' => $marcas])
@section('title', 'Parental')
@section('content')

@include('parental.secciones.categorias')
@include('parental.secciones.articulos')
<!-- articulo aleatorio -->
@if(!isset($prev))
  @include('parental.secciones.articulo')
@endif
@endsection
