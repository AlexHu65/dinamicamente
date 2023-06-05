<section id="articulos" class="pt-3 pb-3 mb-5">
  <div class="container">
    <div class="row">
      <div class="col">
        <h1 class="atenna-regular font-weight-bold font-align-r pt-3 pb-3"> - <br> ARTÍCULOS QUE TE PUEDEN INTERESAR</h1>
      </div>
      <div id="paginate">
        <div class="d-sm-flex flex-column justify-content-center">
          @foreach($articulos as $art)
          <!-- version escritorio  -->
          @include('home.secciones.desktop.articulo')
          <!-- version mobile -->
          @include('home.secciones.mobile.articulo')
          @endforeach
          <div class="mt-5 paginacion-wrapper">
            <div class="articulo-pagination">
              {{$articulos->links()}}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
