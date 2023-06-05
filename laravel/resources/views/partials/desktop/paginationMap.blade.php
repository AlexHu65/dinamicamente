@foreach($locaciones as $loc)
<div class="list-directorio-item row">
  <div class="itm pt-2 col-sm-7">
    <a class="nmap" data-coord="{{$loc->coordenadas}}">{{$loc->lugar}}</a>
  </div>
  <div class="itm pt-2 col-sm-5">
    <a href="tel:{{$loc->telefono}}">{{$loc->telefono}}</a>
    <a class="nmap" data-coord="{{$loc->coordenadas}}"><span style="position: relative;float: right;" class="uk-margin-small-right" uk-icon="location"></span></a>
  </div>
</div>
@endforeach
{{$locaciones->links()}}
<script type="text/javascript">
  // mapa
  var contactoMapa = function(){
    var map = new GMaps({
      el: '#map',
      lat: marke[0].lat,
      lng: marke[0].lng,
      zoom: 10,
      panControl : false,
      streetViewControl : false,
      mapTypeControl: false,
      overviewMapControl: false
    });


    for (let i = 0, c = marke.length; i < c; i++) {
      map.addMarker({
        lat: marke[i].lat,
        lng: marke[i].lng,
        icon: marke[i].icon,
        infoWindow: {
          content: '<strong>'+marke[i].lugar+'</strong><p>Dinámicamente<br />'+marke[i].nombre+'<br />'+marke[i].direccion+'<br />'+marke[i].telefono+'<br /></p>'
        }

      });
    }

    $(".nmap").on('click', function(e){
      e.preventDefault();

      var corde = $(this).attr('data-coord');
      var coord = corde.split(",");

      var newlat = coord[0];
      var newlng = coord[1];

      map.setCenter({
        lat : Number(newlat),
        lng : Number(newlng)
      });

    })
  };
contactoMapa();
</script>
