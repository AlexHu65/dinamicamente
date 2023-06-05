<section id="articulos" class="pt-3 pb-3 mb-5">
  <div class="container">
    <div class="row">
      <div class="col">

        <h1 class="atenna-regular font-weight-bold font-align-r pt-3 pb-3"> - <br> ARTÍCULOS QUE TE PUEDEN INTERESAR</h1>
      </div>
      <div class="d-sm-flex flex-column justify-content-center">
        @foreach($articulos as $art)
        <div class="item-articulo desktop">
          <div class="uk-card uk-card-articulo uk-card-default uk-grid-collapse" uk-grid>
            <div class="uk-flex-last@s uk-card-media-right uk-cover-container uk-cover-custom">
              <img src="{{asset('storage/' . $art->img)}}" alt="{{$art->titulo}}" uk-cover>
              <canvas></canvas>
            </div>
            <div>
              <div style="position: relative;background:url({{asset('images/fondogris.png')}});background-repeat:no-repeat;background-size:cover;width:500px!important;height:180px;" class="uk-card-body">
                <a href="{{url('/') .'/articulos-de-ayuda/'.$art->categoria->slug .'/'. $art->slug}}">
                  <div style="background:{{$art->categoria->color}};" class="button-plus">
                    +
                  </div>
                </a>
                <h3 style="margin:10px 0px" class="font-weight-bold uk-card-title">
                  <span class="text-uppercase" style="color: {{$art->categoria->color}}; font-size:13px!important;">{{$art->categoria->nombre}}</span><br>
                  {{$art->titulo}}
                </h3>
                <p style="min-width:280px !important">{{date('M d Y', strtotime($art->created_at))}}. Por: {{$art->usuario->name}}</p>
              </div>
            </div>
          </div>
        </div>

        <div class="item-articulo mobile">
          <div class="uk-card uk-card-default">
            <div class="uk-card-media-top">
              <img src="{{asset('storage/' . $art->img)}}" alt="{{$art->titulo}}">
            </div>
            <div style="position: relative;background:url({{asset('images/fondogris.png')}});background-repeat:no-repeat;background-size:cover;height:180px;" class="uk-card-body">
              <a href="{{$art->slug}}">
                <div style="background:{{$art->categoria->color}};" class="button-plus">
                  +
                </div>
              </a>
              <h3 style="margin:10px 0px" class="font-weight-bold uk-card-title">
                <span class="text-uppercase" style="color: {{$art->categoria->color}}; font-size:13px!important;">{{$art->categoria->nombre}}</span><br>
                {{$art->titulo}}
              </h3>
              <p>{{date('M d Y', strtotime($art->created_at))}}. Por: {{$art->usuario->name}}</p>
            </div>
          </div>
        </div>
        @endforeach
        {{$articulos->links()}}
      </div>
    </div>
  </div>
</section>
