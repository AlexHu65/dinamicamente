<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
  return view('welcome');
});

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');

Route::get('/articulos-de-ayuda', 'HomeController@articulosAyuda')->name('articulosAyuda');

Route::get('/articulos-de-ayuda/{categoria}', 'HomeController@articulosCategoria')->name('articulosCategoria');
Route::get('/covid/articulos-de-ayuda/{categoria}', 'HomeController@articulosCategoriaCovid')->name('articulosCategoria');
Route::get('/articulos-de-ayuda/{categoria}/{slug}', 'HomeController@articulos')->name('articulos');
Route::get('/covid/articulos-de-ayuda/{categoria}/{slug}', 'HomeController@articulosCovid')->name('articulos.covid');
Route::get('/noticias', 'HomeController@noticias')->name('noticias');
Route::get('/noticias/{slug}', 'HomeController@noticiasInterior')->name('noticiasInterior');

Route::get('/juvenil', 'HomeController@juvenil')->name('juvenil');
Route::get('/infantil', 'HomeController@infantil')->name('infantil');
Route::get('/parental', 'HomeController@parental')->name('infantil');
Route::get('/covid', 'HomeController@covid')->name('covid');

Route::get('/{seccion}/articulos-de-ayuda/{categoria}', 'HomeController@articulos')->name('articulos');
Route::get('/{seccion}/noticias/{categoria}', 'HomeController@noticias')->name('noticias');
Route::get('/{seccion}/categoria/{categoria}', 'HomeController@categorias')->name('categorias');

Route::get('/{seccion}/articulo/{categoria}/{slug}', 'HomeController@articulos')->name('articulo');

// envio de comentario
Route::post('comentario','HomeController@sendComentario')->name('comentario.send');
Route::post('denuncia','HomeController@doDenuncia')->name('denuncia.send');
// busqueda
Route::post('busqueda','HomeController@busqueda')->name('busqueda');
// Route::get('/wiki', 'HomeController@wiki')->name('home');
Route::get('pagination/fetch_data_desktop', 'HomeController@fetch_data_desktop')->name('paginationMap');
Route::get('pagination/fetch_data_mobile', 'HomeController@fetch_data_mobile')->name('paginationMapMobile');
Route::get('pagination/fetch_data_articulo', 'HomeController@fetch_data_articulo')->name('paginationArticulo');

Route::group(['prefix' => 'admDinamicamente'], function () {
  Voyager::routes();
});
