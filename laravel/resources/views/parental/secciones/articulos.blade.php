<section class="pb-5" id="parentalArticulos">
  <div class="container">
    @if(sizeof($articulos) > 0)

    @else
    <h1 class="text-center font-weight-bold">NO HAY ARTÍCULOS PARA MOSTRAR</h1>
    @endif
    <div class="row">
      @foreach($articulos as $art)
      <div class="col-xs-12 col-sm-12 col-md-4">
        <div class="item-parental">
          <a href="{{url('/') .'/articulos-de-ayuda/'.$art->categoria->slug .'/'. $art->slug}}">
            <img src="{{asset('storage/' . $art->img)}}" alt="{{$art->titulo}}">
          </a>
          <div class="info">
            <a href="{{url('/') .'/articulos-de-ayuda/'.$art->categoria->slug .'/'. $art->slug}}">
              <h2>
                {{$art->bullet}}
              </h2>
            </a>
            <p>
              <span>{{$art->titulo}}</span><br>
              <strong>-</strong><br>
              {{date('d.m.y', strtotime($art->fecha))}}
            </p>
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</section>
