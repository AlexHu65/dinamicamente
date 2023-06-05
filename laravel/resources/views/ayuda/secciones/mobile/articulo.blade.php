<div class="item-articulo mobile">
  <div class="uk-card uk-card-default">
    <div class="uk-card-media-top">
      <img src="{{asset('storage/' . $art->img)}}" alt="{{$art->titulo}}">
    </div>
    <div style="position: relative;background:url({{asset('images/fondogris.png')}});background-repeat:no-repeat;background-size:cover;height:180px;" class="uk-card-body">
      <a href="{{url('/') .'/articulos-de-ayuda/'.$art->categoria->slug .'/'. $art->slug}}">
        <div style="background:{{$art->categoria->color}};" class="button-plus">
          +
        </div>
      </a>
      <h3 style="margin:10px 0px" class="font-weight-bold uk-card-title">
        <span class="text-uppercase" style="color: {{$art->categoria->color}}; font-size:13px!important;">{{$art->categoria->nombre}}</span><br>
        {{$art->titulo}}
      </h3>
      <p>{{date('M d Y', strtotime($art->fecha))}}. Por: {{$art->usuario->name}}</p>
    </div>
  </div>
</div>
