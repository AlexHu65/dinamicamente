<div class="item-articulo mt-4 mobile">
  <div class="uk-card uk-card-default">
    <div class="uk-card-media-top">
      <img src="{{asset('storage/' . $cat->img_2)}}" alt="{{$cat->titulo}}">
    </div>
    <div style="position: relative;background:{{$cat->color}};height:180px;" class="uk-card-body">
      <a href="{{url('/') .'/covid/articulos-de-ayuda/'.$cat->slug}}">
        <div style="background:{{$seccion[0]->color}};" class="button-plus">
          +
        </div>
      </a>
      <h3 style="margin:10px 0px; font-size:25pt !important;" class="font-weight-bold uk-card-title text-light">
        {{$cat->nombre}}
      </h3>
    </div>
  </div>
</div>
