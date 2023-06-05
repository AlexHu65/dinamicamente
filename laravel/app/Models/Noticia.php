<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Noticia extends Model
{

  protected $table = "noticias";

  public function categoria(){
    return $this->belongsTo('App\Models\Categoria' , 'id_categoria');
  }

  public function usuario(){
    return $this->belongsTo('App\Models\User' , 'autor');
  }

}
