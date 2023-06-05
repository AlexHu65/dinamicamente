<div class="item-articulo desktop">
  <div class="uk-card uk-card-articulo uk-card-default uk-grid-collapse" uk-grid>
    <div class="uk-flex-last@s uk-card-media-right uk-cover-container uk-cover-custom">
      <img src="{{asset('storage/' . $cat->img_2)}}" alt="{{$cat->nombre}}" uk-cover>
      <canvas></canvas>
    </div>
    <div>
      <div style="border-bottom-left-radius: 70px;position: relative;background:{{$cat->color}};width:500px!important;height:180px;" class="uk-card-body">
        <a href="{{url('/') .'/covid/articulos-de-ayuda/'.$cat->slug}}">
          <div style="background:{{$seccion[0]->color}};" class="button-plus">
            +
          </div>
        </a>
        <h3 style="margin:10px 0px;font-size:28pt !important" class="font-weight-bold uk-card-title text-light">
          {{$cat->nombre}}
        </h3>
      </div>
    </div>
  </div>
</div>
