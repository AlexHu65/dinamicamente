<section style="overflow: hidden;" id="categoriasJuvenil">
  <div class="d-sm-flex justify-content-around">
    @foreach($categorias as $car)
    <div class="item-cat">
      <div class="img-juvenil">
        <img src="{{asset('storage/' . $car->img_2) }}" alt="{{$car->nombre}}">
        <div class="titulo">
          <h2>
            {{$car->nombre}}
          </h2>
          <div class="button-juvenil">
            <a class="home-button font-weight-bold" href="{{url('/') . '/' .$seccion[0]->slug . '/categoria/' . strtolower($car->slug)}}">VER MÁS +</a></p>
          </div>
        </div>
      </div>
    </div>
    @endforeach
  </div>
</section>
