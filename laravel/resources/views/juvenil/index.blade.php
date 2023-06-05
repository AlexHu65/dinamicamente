@extends('master',['mapa' => $mapa, 'marcas' => $marcas])
@section('title', 'Juvenil')
@section('content')

@include('juvenil.secciones.categorias')
@include('juvenil.secciones.instagram')
@include('juvenil.secciones.articulos')

@endsection
