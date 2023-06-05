<section style="display: {{($mapa ? '' : 'none')}}" id="mapa">
  @include('partials.mobile.directorio')
  <div class="mapa-contacto desktop" id="map"></div>
  @include('partials.desktop.directorio')
</section>
