<section class="p-5" id="categoriasInfantil">
  <div class="container">
    <div class="d-sm-flex justify-content-center desktop">
      <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist">
          @foreach($categorias as $car)
          <div data-color="{{$car->color}}" class="item-cat">
            <div class="text-center mh-200">
              <a class="nav-item nav-link {{($car->slug == 'videos' ? 'active' : '')}}" id="nav-{{$car->slug}}-tab" data-toggle="tab" href="#nav-{{$car->slug}}" role="tablist" aria-controls="nav-{{$car->slug}}" aria-selected="true">
                <img src="{{asset('storage/' . $car->img) }}" alt="{{$car->nombre}}">
              </a>
            </div>
            <div class="info-categoria text-center">
              <img class="mt-1" src="{{asset('images/bulletcat-b.png')}}" alt="{{$car->nombre}}">
              <h2 class="text-light atenna-regular title-categoria">{{$car->nombre}}</h2>
              <div class="text">
                {!! $car->descripcion !!}
              </div>
            </div>
          </div>
          @endforeach
        </div>
      </nav>
    </div>
    <div class="mobile">
      @foreach($categorias as $car)
      <div class="item-cat m-3">
        <div>
          <a href="{{url('/') . '/articulos-de-ayuda/' .$car->slug .'/'}}">
            <img src="{{asset('storage/' . $car->img) }}" alt="{{$car->nombre}}">
          </a>
        </div>
        <div class="info-categoria">
          <img class="mt-1" src="{{asset('images/bulletcat.png')}}" alt="">
          <h2 class="text-uppercase atenna-regular font-weight-bold title-categoria">{{$car->nombre}}</h2>
          <div class="text">
            {!! $car->descripcion !!}
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</section>
<script type="text/javascript">
$(".nav-link").click(function() {
  $(".nav-link").each(function(){
    $(this).removeClass('active');
  });
  $(".tab-pane").each(function(){
    $(this).removeClass('active');
    $(this).removeClass('show');
    $(this).css({"display" : "none"});
  });
  $(this).addClass('active');
  var ref = $(this).attr('href');
  $(ref).addClass('show');
  $(ref).addClass('active');
  $(ref).css({"display" : "inherit"});

});
</script>
<section id="panelCategorias">
  <div class="container">
    <div class="tab-content" id="nav-tabContent">
      <div class="container">
        <div class="tab-pane fade show active" id="nav-videos" role="tabpanel" aria-labelledby="nav-videos-tab">
          @if(sizeof($videos) > 0)
          <img class="p-5" src="{{asset('images/lomaspopular.png')}}" alt="Lo más popular ">
          <div class="row pt-2">
            @foreach($videos as $video)
            <div class="col-sm-12 col-md-4 pt-4 pb-4">
              <div class="uk-animation-toggle" tabindex="0">
                <a target="_blank" href="{{$video->link}}">
                  <div class="card text-white bg-dark border-dark uk-animation-slide-bottom-medium" style="border-radius: 0px;width: 100%; border:none;min-height: 350px;">
                    <img class="card-img-top" src="{{asset('storage/' . $video->portada)}}" alt="{{$video->titulo}}">
                    <div class="card-body">
                      <h5 class=" coreM67 font-weight-bold card-title text-light">{{$video->titulo}}</h5>
                      <p style="font-size:13px;" class="card-text">{{$video->contenido}}</p>
                      <a target="_blank" href="{{$video->link}}" ><img style="float:right; width:16%;" src="{{asset('images/youtubeinfantil.png')}}" alt="YouTube"></a>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            @endforeach
          </div>
          @else

          <div class="row pt-2">
            <div class="col-sm-12 col-md-4 mt-4 mb-4">
              <div class="text-center">
                <img class="p-5" src="{{asset('images/nadaparamostrar.png')}}" alt="No hay nada que mostrar">

              </div>
            </div>
          </div>
          @endif
        </div>
      </div>
      <div class="tab-pane fade" id="nav-pandilla" role="tabpanel" aria-labelledby="nav-pandilla-tab">
        <div class="container">
          <div class="row pt-2">
            <div class="col-sm-12 col-md-4 mt-4 mb-4">
              <div class="text-center">
                <img class="p-5" src="{{asset('images/nadaparamostrar.png')}}" alt="No hay nada que mostrar">

              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="tab-pane fade" id="nav-dibujos" role="tabpanel" aria-labelledby="nav-dibujos-tab">

        <div class="container">
          <div class="row pt-2">
            <div class="col-sm-12 col-md-4 mt-4 mb-4">
              <div class="text-center">
                <img class="p-5" src="{{asset('images/nadaparamostrar.png')}}" alt="No hay nada que mostrar">

              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="tab-pane fade" id="nav-juegos" role="tabpanel" aria-labelledby="nav-juegos-tab">

        <div class="container">
          <div class="row pt-2">
            <div class="col-sm-12 col-md-4 mt-4 mb-4">
              <div class="text-center">
                <img class="p-5" src="{{asset('images/nadaparamostrar.png')}}" alt="No hay nada que mostrar">

              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>
