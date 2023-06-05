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
