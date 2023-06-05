<div class="item-articulo desktop">
  <div class="uk-card uk-card-articulo uk-card-default uk-grid-collapse" uk-grid>
    <div class="uk-flex-last@s uk-card-media-right uk-cover-container uk-cover-custom">
      <img src="{{asset('storage/' . $art->img)}}" alt="{{$art->titulo}}" uk-cover>
      <canvas></canvas>
    </div>
    <div>

      <div style="position: relative;background:url({{asset('images/fondogris.png')}});background-repeat:no-repeat;background-size:cover;width:500px!important;height:180px;" class="uk-card-body">
        <a href="{{url('/'). ($art->categoria->emergencia == 1 ? '/covid' : '') .'/articulos-de-ayuda/'.$art->categoria->slug .'/'. $art->slug}}">
          <div style="background:{{$art->categoria->color}};" class="button-plus">
            +
          </div>
        </a>
        <h3 style="margin:10px 0px" class="font-weight-bold uk-card-title">
          <span class="text-uppercase" style="color: {{$art->categoria->color}}; font-size:13px!important;">{{$art->categoria->nombre}}</span><br>
          {{$art->titulo}}
        </h3>
        <p style="min-width:280px !important">Por: {{$art->usuario->name}}</p>
      </div>
    </div>
  </div>
</div>
