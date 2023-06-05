<section id="articulos" class="pt-3 pb-3 mb-5">
  <div class="container">
    <div class="row">      
      <div class="d-sm-flex flex-column justify-content-center">
        @foreach($categorias as $cat)
        <!-- version escritorio  -->
        @include('covid.secciones.desktop.articulo')
        <!-- version mobile -->
        @include('covid.secciones.mobile.articulo')
        @endforeach

      </div>
    </div>
  </div>
</section>
