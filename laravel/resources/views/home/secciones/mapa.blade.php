<section id="mapa">

  <div class="container mobile">
    <div style="width:100%" class="uk-inline pb-3">
      <button style="width:100%;" class="uk-button uk-button-default" type="button">DIRECTORIO <span class="uk-margin-small-right" uk-icon="chevron-down"></span></button>
      <div style="width: 100%;left: 0px;top: 30px;" uk-dropdown="pos: bottom-justify">
        <ul class="uk-nav uk-dropdown-nav">
          @foreach($locaciones as $loc)
          <li style="font-size:13px;" class="text-center font-weight-bold">
            <a class="nmap" data-coord="{{$loc->coordenadas}}">{{$loc->nombre}}</a>
          </li>
          @endforeach
        </ul>
        {{$locaciones->links()}}
      </div>
    </div>
    <div class="mapa-contacto mobile" id="map2"></div>
  </div>
  <div class="mapa-contacto desktop" id="map"></div>

  <div class="directorio p-4 desktop">
    <div class="container">
      <div class="row">
        <div class="d-sm-flex justify-content-end">
          <div class="title">
            <h1>DIRECTORIO</h1>
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

        <div class="lista pt-3">

          @foreach($locaciones as $loc)
          <div class="list-directorio-item row">
            <div class="itm pt-2 col-sm-7">
              <a class="nmap" data-coord="{{$loc->coordenadas}}">{{$loc->nombre}}</a>
            </div>
            <div class="itm pt-2 col-sm-5">
              <a href="tel:{{$loc->telefono}}">{{$loc->telefono}}</a>
              <a class="nmap" data-coord="{{$loc->coordenadas}}"><span style="position: relative;float: right;" class="uk-margin-small-right" uk-icon="location"></span></a>
            </div>
          </div>
          @endforeach
          {{$locaciones->render()}}
          <script type="text/javascript">
          marke = {!! json_encode($marcas) !!};
          </script>
        </div>
      </ul>


    </div>
  </div>

</div>
</section>
