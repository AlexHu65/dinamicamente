<?php

namespace App\Http\Controllers;

// request
use App\Http\Requests\ComentarioRequest;
// Modelos
use App\Models\BannersInteriore as Banners;
use App\Models\Categoria;
use App\Models\Noticia;
use App\Models\Articulo;
use App\Models\Location;
use App\Models\Seccion;
use App\Models\Comentario;
use App\Models\Video;

use Illuminate\Http\Request;

class HomeController extends Controller
{


  public function index($seccion = 1)
  {
    $banner = $this->getBanner($seccion);
    $categorias =  Categoria::where(['activo'=>'1'])->take(4)->get();
    $noticias = Noticia::where('activo' , '1')->orderBy('created_at' , 'desc')->take(2)->get();
    $articulos = Articulo::where('activo' , '1')->orderBy('created_at' , 'desc')->paginate(10);
    $locaciones = Location::where('activo' , '1')->paginate(10);
    $seccion =  Seccion::where(['activo' => '1' , 'id' => $seccion])->first()->get();

    return view(
      'home.index' ,
      ['banner' => $banner,
      'categorias' => $categorias,
      'noticias' => $noticias,
      'articulos' => $articulos,
      'locaciones' => $locaciones,
      'marcas' => $this->map(),
      'seccion' => $seccion,
      'mapa' => true
    ]
  );
}

public function articulosCategoria($categoria){

  $seccion = Seccion::where(['activo' => '1', 'slug' => $categoria])->get();

  if($seccion->isEmpty()){
    return redirect()->route('home');
  }

  $banner = $this->getBanner($seccion[0]->id);
  $categorias =  Categoria::where(['activo'=>'1'])->take(4)->get();
  $categoriaId = Categoria::where(['activo'=>'1' ,'slug' => $categoria])->get('id');
  $locaciones = Location::where('activo' , '1')->paginate(10);
  $articulos = Articulo::where(['activo' => '1' ,'id_categoria' => $categoriaId[0]->id])->orderBy('created_at' , 'desc')->paginate(10);


  return view(
    'articulos.index' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'seccion' => $seccion,
    'articulos' => $articulos,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'mapa' => true
  ]
);
}

public function juvenil($seccion = 3)
{
  $banner = $this->getBanner($seccion);
  $categorias =  Categoria::where(['activo'=>'1' , 'juvenil' => '1'])->get();

  // noticias y categorias juvenil
  $noticias = Noticia::where(['activo' =>  '1' , 'id_seccion' => $seccion])->inRandomOrder()->get();
  $articulos = Articulo::where(['activo' =>  '1' , 'id_seccion' => $seccion])->inRandomOrder()->get();
  $locaciones = Location::where('activo' , '1')->paginate(10);
  $seccion =  Seccion::where(['activo' => '1' , 'id' => $seccion])->get();

  return view(
    'juvenil.index' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'noticias' => $noticias,
    'articulos' => $articulos,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'seccion' => $seccion,
    'mapa' => true
  ]
);
}

public function parental($seccion = 4){

  $banner = $this->getBanner($seccion);
  $categorias =  Categoria::where(['activo'=>'1' , 'parental' => '1'])->get();

  // noticias y categorias juvenil
  $noticias = Noticia::where(['activo' =>  '1' , 'id_seccion' => $seccion])->inRandomOrder()->get();
  $articulos = Articulo::where(['activo' =>  '1' , 'id_seccion' => $seccion])->orderBy('id','desc')->get();

  $seccion =  Seccion::where(['activo' => '1' , 'id' => $seccion])->get();
  $locaciones = Location::where('activo' , '1')->paginate(10);
  return view(
    'parental.index' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'noticias' => $noticias,
    'articulos' => $articulos,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'seccion' => $seccion,
    'mapa' => true
  ]
);
}

protected function map(){

  $locaciones = Location::where('activo' , '1')->paginate(1000);
  $mapaCoordenadas = array();

  foreach ($locaciones as $i => $v) {
    $coordenadas = (explode( ',', $v->coordenadas));
    $mapaCoordenadas[] = array(
      "lat" => $coordenadas[0],
      "lng" => $coordenadas[1],
      'icon' => url('/') . '/images/marke.png',
      "nombre" => $v->nombre,
      "lugar" => $v->lugar,
      "direccion" => $v->direccion,
      "telefono" => $v->telefono,

    );
  }

  return $mapaCoordenadas;

}

public function articulosAyuda($seccion = 9){

  $banner = $this->getBanner($seccion);
  $categorias =  Categoria::where(['activo'=>'1'])->take(4)->get();
  $noticias = Noticia::where('activo' , '1')->inRandomOrder()->take(2)->get();
  $articulos = Articulo::where('activo' , '1')->orderBy('created_at' , 'desc')->paginate(10);
  $locaciones = Location::where('activo' , '1')->paginate(10);
  $seccion =  Seccion::where(['activo' => '1' , 'id' => $seccion])->first()->get();

  return view(
    'ayuda.index' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'noticias' => $noticias,
    'articulos' => $articulos,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'seccion' => $seccion,
    'mapa' => true
  ]
);

}

public function articulos($seccion , $articuloSlug){

  $seccion = Seccion::where(['activo' => '1', 'slug' => $seccion])->get();

  if($seccion->isEmpty()){
    return redirect()->route('home');
  }
  $seccionId =  $seccion->first()->id;
  $banner = $this->getBanner($seccionId);
  $categorias =  Categoria::where(['activo'=>'1'])->take(4)->get();
  $locaciones = Location::where('activo' , '1')->paginate(10);
  $articulo = Articulo::where(['activo' => '1' ,'slug' => $articuloSlug])->first();
  $articulo->increment('vistas');
  // articulos
  $articulos = Articulo::where(['activo' => '1'])->orderBy('created_at', 'desc')->take(5)->get();
  $vistas = Articulo::where(['activo' => '1'])->orderBy('vistas', 'desc')->take(5)->get();

  return view(
    'articulos.interior' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'seccion' => $seccion,
    'articulo' => $articulo,
    'articulos' => $articulos,
    'vistas' => $vistas,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'mapa' => true
  ]
);

}

public function noticiasInterior($articuloSlug){

  $seccion = 10;
  $seccion = Seccion::where(['activo' => '1', 'id' => $seccion])->get();

  if($seccion->isEmpty()){
    return redirect()->route('home');
  }
  $seccionId =  $seccion->first()->id;
  $banner = $this->getBanner($seccionId);
  $categorias =  Categoria::where(['activo'=>'1'])->take(4)->get();
  $locaciones = Location::where('activo' , '1')->paginate(10);
  $articulo = Noticia::where(['activo' => '1' ,'slug' => $articuloSlug])->first();
  $articulo->increment('vistas');
  // articulos
  $articulos = Noticia::where(['activo' => '1'])->orderBy('created_at', 'desc')->take(15)->get();
  $vistas = Noticia::where(['activo' => '1'])->orderBy('vistas', 'desc')->take(15)->get();

  return view(
    'noticias.interior' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'seccion' => $seccion,
    'articulo' => $articulo,
    'articulos' => $articulos,
    'vistas' => $vistas,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'mapa' => true
  ]
);

}

public function categorias($seccion , $categoria){

  $seccionInfo =  Seccion::where(['activo' => '1' , 'slug' => $seccion])->get();
  $seccionId =  $seccionInfo[0]->id;

  $banner = $this->getBanner($seccionId);
  $categorias =  Categoria::where(['activo'=>'1' , $seccion => '1',  'slug' => $categoria ])->get();
  $categoriasInterior =  Categoria::where(['activo'=>'1' , $seccion => '1'])->get();

  $categoriaId =  $categorias[0]->id;

  // noticias y categorias juvenil
  $noticias = Noticia::where(['activo' =>  '1' , 'id_seccion' => $seccionId, 'id_categoria' => $categoriaId])->inRandomOrder()->get();
  $articulos = Articulo::where(['activo' =>  '1' , 'id_seccion' => $seccionId, 'id_categoria' => $categoriaId])->inRandomOrder()->get();

  $locaciones = Location::where('activo' , '1')->paginate(10);
  $seccion =  Seccion::where(['activo' => '1' , 'id' => $seccionId])->get();


  return view(
    ''.$seccion[0]->slug.'.index' ,
    ['banner' => $banner,
    'categorias' => $categoriasInterior,
    'noticias' => $noticias,
    'articulos' => $articulos,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'seccion' => $seccion,
    'mapa' => true,
    'prev' => false
  ]
);

}

public function noticias($seccion = 10){

  $banner = $this->getBanner($seccion);
  $categorias =  Categoria::where(['activo'=>'1'])->take(4)->get();
  $noticias = Noticia::where('activo' , '1')->inRandomOrder()->take(2)->get();
  $articulos = Noticia::where('activo' , '1')->paginate(10);
  $locaciones = Location::where('activo' , '1')->paginate(10);
  $seccion =  Seccion::where(['activo' => '1' , 'id' => $seccion])->first()->get();

  return view(
    'noticias.index' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'noticias' => $noticias,
    'articulos' => $articulos,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'seccion' => $seccion,
    'mapa' => true
  ]
);


}

public function infantil($seccion = 2)
{

  $banner = $this->getBanner($seccion);
  $categorias =  Categoria::where(['activo'=>'1' , 'infantil' => '1'])->orderBy('created_at','desc')->get();


  // noticias y categorias juvenil
  $noticias = Noticia::where(['activo' =>  '1' , 'id_seccion' => $seccion])->inRandomOrder()->get();
  $articulos = Articulo::where(['activo' =>  '1' , 'id_seccion' => $seccion])->inRandomOrder()->get();

  $locaciones = Location::where('activo' , '1')->paginate(10);
  $seccion =  Seccion::where(['activo' => '1' , 'id' => $seccion])->get();
  $videos =  Video::where(['activo' => '1'])->orderBy('created_at' , 'asc')->get();


  $mapaCoordenadas = array();

  foreach ($locaciones as $i => $v) {
    $coordenadas = (explode( ',', $v->coordenadas));
    $mapaCoordenadas[] = array(
      "lat" => $coordenadas[0],
      "lng" => $coordenadas[1],
      'icon' => url('/') . '/images/marke.png',
      "nombre" => $v->nombre,
      "direccion" => $v->direccion,

    );
  }

  return view(
    'infantil.index' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'noticias' => $noticias,
    'articulos' => $articulos,
    'locaciones' => $locaciones,
    'marcas' => $mapaCoordenadas,
    'seccion' => $seccion,
    'videos' => $videos,
    'mapa' => false
  ]
);

}

// obtener el banner de la sección
protected function getBanner($seccion){
  $banner = Banners::where(['activo' => '1' , 'id_seccion' => $seccion])
  ->orderBy('orden' , 'asc')
  ->get();
  return $banner;
}

// obtener el banner de la sección
protected function getBannerCategoria($categoria){
  $banner = Categoria::where(['activo' => '1' , 'id' => $categoria])
  ->get();
  return $banner;
}

public function sendComentario(ComentarioRequest $request){
  $comentario = new Comentario;
  $comentario->id_articulo = $request->input('txtHidden');
  $comentario->nombre = $request->input('txtNombre');
  $comentario->email = $request->input('txtEmail');
  $comentario->web = $request->input('txtWeb');
  $comentario->mensaje = $request->input('txtComentario');
  $comentario->fecha = date('Y-m-d H:i:s');
  $comentario->activo = 0;

  if($comentario->save()){
    return response(['msg'=>'Tu Comentario ha sido enviado y está pendiente de revisión']);
  }
  return response(['error'=>'Error al enviar tu mensaje']);
}

function busqueda(Request $request){
  // if($request->ajax()){
  $locaciones = Location::where('lugar','LIKE','%'.$request->input('string').'%')->paginate(10);
  return view('partials.desktop.paginationMap', compact('locaciones'))->render();
  // }
}

function fetch_data_desktop(Request $request){
  // if($request->ajax()){
  $locaciones = Location::where('activo' , '1')->paginate(10);
  return view('partials.desktop.paginationMap', compact('locaciones'))->render();
  // }
}

function fetch_data_articulo(Request $request){
  // if($request->ajax()){
  $articulos = Articulo::where('activo' , '1')->orderBy('created_at' , 'desc')->paginate(10);
  return view('partials.paginacion.paginacion', compact('articulos'))->render();
  // }
}

function fetch_data_mobile(Request $request){
  // if($request->ajax()){
  $locaciones = Location::where('activo' , '1')->paginate(10);
  return view('partials.mobile.paginationMap', compact('locaciones'))->render();
  // }
}

function doDenuncia(Request $request){
  if($request->ajax()){
    $comentario = new Comentario;
    if($comentario::where(['id'=> $request->id])->update(['activo' => 0 , 'denuncias' => 1])){
      return response(['msg' => 'Mensaje denunciado']);
    }else{
      return response(['error' => 'Fallo al denunciar mensaje']);
    }
  }
}


function covid(){

  $banner = Banners::where(['activo' => '1' , 'id_seccion' => '11'])->get();
  $categorias =  Categoria::where(['activo'=>'1' , 'emergencia' => '1'])->get();
  $locaciones = Location::where('activo' , '1')->paginate(10);
  $seccion =  Seccion::where(['activo' => '1' , 'id' => '11'])->get();

  return view(
    'covid.index' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'seccion' => $seccion,
    'mapa' => true
  ]
);

}
public function articulosCategoriaCovid($categoria){

  $seccion = Seccion::where(['activo' => '1', 'id' => '11'])->get();

  if($seccion->isEmpty()){
    return redirect()->route('home');
  }

  $banner = $this->getBanner($seccion[0]->id);
  $categorias =  Categoria::where(['activo'=>'1' , 'emergencia' => '1'])->get();
  $categoriaId = Categoria::where(['activo'=>'1' ,'slug' => $categoria])->get('id');
  $locaciones = Location::where('activo' , '1')->paginate(10);
  $articulos = Articulo::where(['activo' => '1' ,'id_categoria' => $categoriaId[0]->id])->paginate(10);


  return view(
    'covid.articulos.index',
    ['banner' => $banner,
    'categorias' => $categorias,
    'seccion' => $seccion,
    'articulos' => $articulos,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'mapa' => true
  ]
);
}

public function articulosCovid($seccion , $articuloSlug){

  $seccion = Seccion::where(['activo' => '1', 'id' => '11'])->get();

  if($seccion->isEmpty()){
    return redirect()->route('home');
  }
  $banner = $this->getBanner($seccion[0]->id);
  $categorias =  Categoria::where(['activo'=>'1' , 'emergencia' => '1'])->get();
  $locaciones = Location::where('activo' , '1')->paginate(10);
  $articulo = Articulo::where(['activo' => '1' ,'slug' => $articuloSlug])->first();
  $articulo->increment('vistas');
  // articulos
  $articulos = Articulo::where(['activo' => '1' , 'id_seccion' => '11'])->orderBy('created_at', 'desc')->take(5)->get();
  $vistas = Articulo::where(['activo' => '1' , 'id_seccion' => '11'])->orderBy('vistas', 'desc')->take(5)->get();

  return view(
    'covid.articulos.interior' ,
    ['banner' => $banner,
    'categorias' => $categorias,
    'seccion' => $seccion,
    'articulo' => $articulo,
    'articulos' => $articulos,
    'vistas' => $vistas,
    'locaciones' => $locaciones,
    'marcas' => $this->map(),
    'mapa' => true
  ]
);

}
}
