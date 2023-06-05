<section class="pt-4 pb-4 mt-5 mb-5" id="categoriasParental">
  <div class="d-sm-flex justify-content-center parental-categoria-wrapper">
    @foreach($categorias as $car)
    <div class="item-cat-parental">
      <a href="{{url('/') . '/' .$seccion[0]->slug . '/categoria/' . strtolower($car->slug)}}">{{$car->nombre}}</a>
    </div>
    @endforeach
  </div>
</section>
