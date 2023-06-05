<section class="p-5" id="categorias">
  <div class="container">
    <div class="d-sm-flex justify-content-around desktop">
      @foreach($categorias as $car)
      <div data-color="{{$car->color}}" class="item-cat m-3">
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
    <div class="mobile">
      @foreach($categorias as $car)
      <div class="item-cat m-3">
        <div>
          <img src="{{asset('storage/' . $car->img) }}" alt="{{$car->nombre}}">
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
