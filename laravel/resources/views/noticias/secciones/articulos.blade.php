<section id="articulos" class="pt-3 pb-3 mb-5">
  <div class="container">
    <div class="row">
      <div class="col">

        <h1 class="atenna-regular font-weight-bold font-align-r pt-3 pb-3"> - <br> NOTICIAS QUE TE PUEDEN INTERESAR</h1>
      </div>
      <div class="d-sm-flex flex-column justify-content-center">
        @foreach($articulos as $art)
        <!-- version escritorio  -->
        @include('noticias.secciones.desktop.articulo')
        <!-- version mobile -->
        @include('noticias.secciones.mobile.articulo')
        @endforeach
        {{$articulos->links()}}
      </div>
    </div>
  </div>
</section>
