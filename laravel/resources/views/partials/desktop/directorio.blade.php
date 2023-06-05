<style media="screen">
/* TODO: quitar de aqui */
  .list-directorio-item{
    font-size: 12px !important
  }
</style>
<div class="directorio p-4 desktop">
  <div class="container">
    <div class="row">
      <div class="d-sm-flex justify-content-end">
        <div class="title">
          <h1 style="line-height: 0;">DIRECTORIO</h1>
        </div>
      </div>
      <div class="d-sm-flex desktop">
        <div class="input-busqueda">
          <input class="busqueda-directorio form-control" type="text">
        </div>
        <div class="button-busqueda">
          <img src="{{asset('images/lupa.png')}}" alt="busqueda">
        </div>
      </div>
      <div id="desktopPagination" class="desktopPagination lista">

        @include('partials.desktop.paginationMap')

      </div>



  </div>
</div>

</div>
