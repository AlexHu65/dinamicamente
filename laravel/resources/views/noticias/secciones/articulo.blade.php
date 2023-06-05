<section id="articulos" class="pt-3 pb-3 mb-5 articulo-detalle">
  <div class="container">
    <div class="row">
      <div class="col-md-8">

        <div class="volver float-right p-3">
          <span class="uk-margin-small-right" uk-icon="arrow-left"></span> <span>Volver</span>
        </div>
        <div class="texto">
          <h3 class="articulo-titulo-interior font-weight-bold">{{$articulo->titulo}}</h3>

          <p class="nota"><span class="font-weight-bold text-uppercase" style="color:{{$articulo->categoria->color}}">{{$articulo->categoria->nombre}}</span> » {{date('M d Y', strtotime($articulo->fecha))}}. Por: {{$articulo->usuario->name}}</p>
          <div class="imagen">
            <img src="{{asset('storage/' . $articulo->img)}}" alt="{{$articulo->titulo}}">
          </div>
          {!! $articulo->contenido !!}
        </div>
        <div class="compartir">

        </div>       

      </div>
      <div class="col-md-4">
        <div class="lo-mas-nuevo">
          <h4 class="font-weight-bold">Lo más nuevo</h4>
          <ul>
            @foreach($articulos as $nuevoArt)
            <li>
              <a href="{{url('/') .'/articulos-de-ayuda/'.$nuevoArt->categoria->slug .'/'. $nuevoArt->slug}}">{{$nuevoArt->titulo}}</a><br>
              <small>» <span class="text-uppercase" style="font-size: 12px;color:{{$nuevoArt->categoria->color}}">{{$nuevoArt->categoria->nombre}}</span></small>
            </li>
            @endforeach
          </ul>
        </div>
        <div class="lo-mas-visto">
          <h4 class="font-weight-bold">Lo más visto</h4>
          <ul>
            @foreach($vistas as $vistas)
            <li>
              <a href="{{url('/') .'/articulos-de-ayuda/'.$vistas->categoria->slug .'/'. $vistas->slug}}">{{$vistas->titulo}}</a>
              <br>
              <small>» <span class="text-uppercase" style="font-size: 12px;color:{{$vistas->categoria->color}}">{{$vistas->categoria->nombre}}</span></small>
            </li>
            @endforeach
          </ul>
        </div>
      </div>
    </div>
  </div>

</section>
