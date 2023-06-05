@extends('master',['mapa' => $mapa])
@section('title', 'Categorías y artículos de ayuda')
@section('content')

@include('juvenil.secciones.categorias')
@include('juvenil.secciones.instagram')
@include('juvenil.secciones.articulos')

@endsection
