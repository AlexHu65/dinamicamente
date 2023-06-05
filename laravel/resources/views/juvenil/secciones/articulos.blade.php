<section class="pb-5" id="juvenilArticulos">
  <div class="container">
    @if(sizeof($articulos) > 0)
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <?php $cont = 0; ?>

        @foreach($articulos as $art)
        <div class="carousel-item {{($cont == 0 ? 'active' : '' )}}">
          <div class="card-juvenil  uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin" uk-grid>
            <div class="uk-card-media-left uk-cover-container uk-card-juvenil">
              <a href="{{url('/') .'/articulos-de-ayuda/'.$art->categoria->slug .'/'. $art->slug}}">
                <img src="{{asset('storage/'.$art->img)}}" alt="" uk-cover>
              </a>
              <canvas width="600" height="400"></canvas>
            </div>
            <div>
              <div class="uk-card-body mt-5 juvenil-card-body">
                <span style="color: {{$art->categoria->color}}" class="font-weight-bold text-uppercase">{{$art->bullet}}</span>
                <h3 class="uk-card-title font-weight-bold titulo-juvenil-interior">{{$art->titulo}}</h3>
                <div style="background:{{$art->categoria->color}}" class="divider-seccion"></div>

                {!! substr($art->contenido , 0 , 150) !!} <strong>
                  <a style="color:{{$art->categoria->color}}" href="{{url('/') .'/articulos-de-ayuda/'.$art->categoria->slug .'/'. $art->slug}}">[...]</a></strong>
                </div>
              </div>
            </div>
          </div>
          <?php $cont++; ?>
          @endforeach
          @else
          <h1 class="text-center font-weight-bold">NO HAY ARTÍCULOS PARA MOSTRAR</h1>
          @endif
        </div>
        @if(sizeof($articulos) > 0)
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
        @endif
      </div>

    </div>
  </section>
