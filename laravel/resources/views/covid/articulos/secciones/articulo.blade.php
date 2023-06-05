<section id="articulos" class="pt-3 pb-3 mb-5 articulo-detalle">
  <div class="container">
    <div class="row">
      <div class="col-md-8">

        <div class="volver float-right p-3">
          <span class="uk-margin-small-right" uk-icon="arrow-left"></span> <span>Volver</span>
        </div>
        <div class="texto">
          <h3 class="articulo-titulo-interior font-weight-bold">{{$articulo->titulo}}</h3>

          <p class="nota"><span class="font-weight-bold text-uppercase" style="color:{{$articulo->categoria->color}}">{{$articulo->categoria->nombre}}
</span> » Por: {{$articulo->usuario->name}}</p>
          <div class="imagen">
            <img src="{{asset('storage/' . $articulo->img)}}" alt="{{$articulo->titulo}}">
          </div>
          {!! $articulo->contenido !!}
        </div>
        <div class="compartir">

        </div>
        <div class="formulario">
          <h4>Deja un comenario</h4>
          <small>Tu dirección de correo electrónico no será publicada. Los campos obligatorios están marcados con*</small>
          <form id="frm-comentario" class="bv-form" method="post" action="{{url('/')}}/comentario">
            @csrf
            <div class="form-group">
              <textarea class="form-control validate[required, minSize[10] ,custom[onlyLetterNumber]]" name="txtComentario" id="txtComentario" placeholder="Tu comentario(*)" data-bv-field="comentario"></textarea>
            </div>
            <div class="form-group">
              <input type="text" class="form-control validate[required , custom[onlyLetterNumber]]" name="txtNombre" id="txtNombre" placeholder="Nombre(*)" data-bv-field="nombre">
            </div>
            <div class="form-group">
              <input type="text" class="form-control validate[required, custom[email]]" name="txtEmail" id="txtEmail" placeholder="Correo Electronico(*)" data-bv-field="email">
            </div>
            <div class="form-group">
              <input type="text" class="form-control validate[minSize[10] ,custom[url]]" name="txtWeb" id="txtWeb" placeholder="Página Web">
              <input type="hidden" name="txtHidden" value="{{$articulo->id}}">
            </div>
            <div class="clear"></div>
            <div class="acciones">
              <button type="submit" id="btnSubmit" class="send">Publicar Comentario</button>
              <span class="co loading dn"><i class="fas fa-spinner fa-spin"></i>&nbsp;Enviando...</span>
              <div class="msg dn" role="alert"></div>
            </div>

            <input type="hidden" name="id" value="19">
          </form>
        </div>
        <div class="comentarios">
          <h4>Comentarios</h4>
          <div class="listado-comentarios">
            @foreach($articulo->comentarios->where('activo' , '1') as $comentario)
            <div class="item ">
              <p class="nombre-fecha">{{$comentario->nombre}}
<span class="dn">{{date('M d Y', strtotime($comentario->created_at))}}</span>
</p>
              <p>{{$comentario->mensaje}}</p>
              <p class="denunciar"><span class="btn-denunciar" data-com="{{$comentario->id}}">Denunciar</span></p>
            </div>
            @endforeach
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="lo-mas-nuevo">
          <h4 class="font-weight-bold">Lo más nuevo</h4>
          <ul>
            @foreach($articulos as $nuevoArt)
            <li>
              <a href="{{url('/') .'/covid/articulos-de-ayuda/'.$nuevoArt->categoria->slug .'/'. $nuevoArt->slug}}">{{$nuevoArt->titulo}}</a><br>
              <small>» <span class="text-uppercase" style="font-size: 12px;color:{{$nuevoArt->categoria->color}}">{{$nuevoArt->categoria->nombre}}</span></small>
            </li>
            @endforeach
          </ul>
        </div>
        <div class="lo-mas-visto">
          <h4 class="font-weight-bold">Lo más visto</h4>
          <ul>
            @foreach($vistas as $vistas)
            <li>
              <a href="{{url('/') .'/covid/articulos-de-ayuda/'.$vistas->categoria->slug .'/'. $vistas->slug}}">{{$vistas->titulo}}</a>
              <br>
              <small>» <span class="text-uppercase" style="font-size: 12px;color:{{$vistas->categoria->color}}">{{$vistas->categoria->nombre}}</span></small>
            </li>
            @endforeach
          </ul>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript">

  ajaxValidationCallback = function(status, form, json, options) {
    if (window.console) {
      console.log(status);
    }
    if (status === true) {

      $(".loading").addClass('dn');
      $(".msg").removeClass('dn');
      $(".msg").html(json.msg);
      $(".msg").css({"color" : "green"});

    }else{

      $('#btnSubmit').show(500);
      $(".loading").addClass('dn');
      $(".msg").removeClass('dn');
      $(".msg").html(json.error);
      $(".msg").css({"color" : "red"});

    }
    return false;
  };

  var validateForm = function() {
    jQuery("#frm-comentario").validationEngine('attach',{
      ajaxFormValidation: true,
      ajaxFormValidationMethod: 'post',
      onAjaxFormComplete: ajaxValidationCallback,
      onFailure: function(status, form, json, options){
        console.log("status:" , status);
        console.log("form:" , form);
        console.log("json:" , json);
        console.log("option:" , options);
      }
    });
    return false;
  };



  var denunciar = function() {
    $('.btn-denunciar').on('click', function(){
      var id = $(this).attr('data-com');
      $.ajax({
        type: "POST",
        url: url + "/denuncia",
        data: {'id' : id},
        headers: {
          'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content'),
          'X-Requested-With':'XMLHttpRequest'
        },
        success: function (data) {
          if (data.msg) {
            $(".msg").removeClass('dn');
            $(".msg").html(data.msg);
            $(".msg").css({"color" : "red"});
            location.reload();

          } else if (data.error) {
            $(".msg").removeClass('dn');
            $(".msg").html(data.error);
            $(".msg").css({"color" : "red"});
            location.reload();
          }
        },
        error: function(e){
          console.log("Error en ajax request: ",e);
        }
      });

    });
  };
  denunciar();
  validateForm();


  </script>
</section>
