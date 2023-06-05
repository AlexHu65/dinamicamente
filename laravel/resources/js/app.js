require('./bootstrap');
var toggle  = false;
AOS.init();

(function(){

  function findSelector(){
    selector =  document.querySelectorAll(".nmap");
  }
  findSelector();

  $(document).ready(function(){

    var volver = function(){
      $(".volver").on('click', function(){
        window.history.back();
      })
    }

    // mapa
    // var contactoMapa = function(){
    //   var map = new GMaps({
    //     el: '#map',
    //     lat: marke[0].lat,
    //     lng: marke[0].lng,
    //     zoom: 10,
    //     panControl : false,
    //     streetViewControl : false,
    //     mapTypeControl: false,
    //     overviewMapControl: false
    //   });
    //
    //
    //   for (let i = 0, c = marke.length; i < c; i++) {
    //     map.addMarker({
    //       lat: marke[i].lat,
    //       lng: marke[i].lng,
    //       icon: marke[i].icon,
    //       infoWindow: {
    //         content: '<p>Dinámicamente<br />'+marke[i].nombre+'<br /></p>'
    //       }
    //
    //     });
    //   }
    //
    //   $(selector).on('click', function(e){
    //     e.preventDefault();
    //
    //     var corde = $(this).attr('data-coord');
    //     var coord = corde.split(",");
    //
    //
    //     var newlat = coord[0];
    //     var newlng = coord[1];
    //     console.log("nuevas coordenadas: " , newlat + newlng);
    //
    //     map.setCenter({
    //       lat : Number(newlat),
    //       lng : Number(newlng)
    //     });
    //
    //   })
    // };

    // mapa
    // var contactoMapaMobile = function(){
    //   var map2 = new GMaps({
    //     el: '#map2',
    //     lat: marke[0].lat,
    //     lng: marke[0].lng,
    //     zoom: 10,
    //     panControl : false,
    //     streetViewControl : false,
    //     mapTypeControl: false,
    //     overviewMapControl: false
    //   });
    //
    //
    //   for (let i = 0, c = marke.length; i < c; i++) {
    //     map2.addMarker({
    //       lat: marke[i].lat,
    //       lng: marke[i].lng,
    //       icon: marke[i].icon,
    //       infoWindow: {
    //         content: '<p>Dinámicamente<br />'+marke[i].nombre+'<br /></p>'
    //       }
    //     });
    //   }
    //
    //
    //   $(".nmap").on('click', function(e){
    //     e.preventDefault();
    //     var corde = $(this).attr('data-coord');
    //     var coord = corde.split(",");
    //
    //     var newlat = coord[0];
    //     var newlng = coord[1];
    //
    //     map2.setCenter({
    //       lat : Number(newlat),
    //       lng : Number(newlng)
    //     });
    //
    //   })
    // };

    var scroll = function(){
      $(window).scroll(function(){
        var position = $(this).scrollTop();
        if(position  > 0 ){
          $("#header").css({'top' : '-150px'});
          $(".menu-wraper").css({'left' : '20px'});
        }else{
          $("#header").css({'top' : '0'});
          $(".menu-wraper").css({'left' : '-150px'});
          $(".menu-items").css({"left" : '-100%'});
          const elements = document.getElementsByClassName('menu-btn');
          for(let i = 0; i < elements.length; i++) {
            const element = elements[i];
            element.classList.remove('open');
            toggle = false;
          }
        }
      })
    }

    var colorMenu =  function(){
      $(".list-inline-item").hover(function(){
        $(this).addClass("color");
        $(this).children().removeClass('dn');

      }, function(){
        $(this).removeClass("color");
        $(this).children(":first").addClass('dn');

      });
    }

    window.onload = function() {

      const elements = document.getElementsByClassName('menu-btn');
      for(let i = 0; i < elements.length; i++) {
        const element = elements[i];

        setTimeout(function(){
          element.classList.add('open');
        }, (600*i) );

        setTimeout(function(){
          element.classList.remove('open');
        }, ((600*(i+1))+100) );

        element.onclick = function() {
          this.classList.toggle('open');
          if(!toggle){
            $(".menu-items").css({"left" : '0%'});
            toggle = true;
          }else{
            $(".menu-items").css({"left" : '-100%'});
            toggle = false;
          }
        }
      }
    }

    var buscador = function(){
      $(".busqueda-directorio").keyup(function(){
        var s = $(this).val();
        var data = {string: s};
        $('#desktopPagination').html('<div style="position:absolute;top:50%;left:50%;" uk-spinner></div>');

        $.ajax({
          type: "POST",
          url: url + "/busqueda",
          data: data,
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          success: function (data) {
            console.log("Respuesta del controlador",data);
            $('#desktopPagination').html(data);

          },
          error: function(e){
            console.log("Error en ajax request: ",e);
          }
        });
      });
    }
    buscador();

    // desktop pagination
    var dPagination = function(){
      $(document).on('click' , '.desktopPagination .pagination a', function(e){
        e.preventDefault();
        var page = $(this).attr('href').split('page=')[1];
        $('#desktopPagination').html('<div style="position:absolute;top:50%;left:50%;" uk-spinner></div>');

        fetch_data(page);
      });

      function fetch_data(page){
        $.ajax({
          url: url  + "/pagination/fetch_data_desktop?page="+page,
          success:function(data){
            findSelector();
            $('#desktopPagination').html(data);
          },
          error:function(data){
            console.log("Error ajax: ",data);
          }
        });
      }
    }

    var mPagination = function(){
      $(document).on('click' , '.mobilePagination .pagination a', function(e){
        e.preventDefault();
        var page = $(this).attr('href').split('page=')[1];
        $('#mobilePagination').html('<div style="position:absolute;top:50%;left:50%;" uk-spinner></div>');
        fetch_data(page);
      });

      function fetch_data(page){
        $.ajax({
          url: url  + "/pagination/fetch_data_mobile?page="+page,
          success:function(data){
            findSelector();
            $('#mobilePagination').html(data);
          },
          error:function(data){
            console.log("Error ajax: ",data);
          }
        });
      }
    }

    var artPagination = function(){
      $(document).on('click' , '.paginacion-wrapper .articulo-pagination .pagination a', function(e){
        e.preventDefault();
        var page = $(this).attr('href').split('page=')[1];
        fetch_articulo(page);
      });
      function fetch_articulo(page){
        $.ajax({
          url: url  + "/pagination/fetch_data_articulo?page="+page,
          success:function(data){
            $('#paginate').html(data);
          },
          error:function(data){
            console.log("Error ajax: ",data);
          }
        });
      }

    }


    // contactoMapa();
    scroll();
    // validateForm();
    colorMenu();
    volver();
    dPagination();
    mPagination();
    artPagination();
  });

}).call(this)
