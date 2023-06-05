<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Comentario extends Model
{
  protected $table = "comentarios";

  public function articulo(){
    return $this->belongsTo('App\Models\Articulo' , 'id_articulo');
  }

}
