<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Articulo extends Model
{

  protected $table = "articulos";

  public function categoria(){
    return $this->belongsTo('App\Models\Categoria' , 'id_categoria');
  }

  public function usuario(){
    return $this->belongsTo('App\Models\User' , 'autor');
  }

  public function comentarios(){
    return $this->hasMany('App\Models\Comentario', 'id_articulo');
  }

}
