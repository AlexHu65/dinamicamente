<ul class="uk-nav uk-dropdown-nav">
  @foreach($locaciones as $loc)
  <li style="font-size:13px;" class="text-center font-weight-bold">
    <a class="nmap" data-coord="{{$loc->coordenadas}}">{{$loc->lugar}}</a>
  </li>
  @endforeach
</ul>
{{$locaciones->links()}}
<script type="text/javascript">
  var contactoMapaMobile = function(){
    var map2 = new GMaps({
      el: '#map2',
      lat: marke[0].lat,
      lng: marke[0].lng,
      zoom: 10,
      panControl : false,
      streetViewControl : false,
      mapTypeControl: false,
      overviewMapControl: false
    });


    for (let i = 0, c = marke.length; i < c; i++) {
      map2.addMarker({
        lat: marke[i].lat,
        lng: marke[i].lng,
        icon: marke[i].icon,
        infoWindow: {
          content: '<p>Dinámicamente<br />'+marke[i].nombre+'<br /></p>'
        }
      });
    }


    $(".nmap").on('click', function(e){
      e.preventDefault();
      var corde = $(this).attr('data-coord');
      var coord = corde.split(",");

      var newlat = coord[0];
      var newlng = coord[1];

      map2.setCenter({
        lat : Number(newlat),
        lng : Number(newlng)
      });

    })
  };
contactoMapaMobile();
</script>
