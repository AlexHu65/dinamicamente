<div class="container desktop">
  <div class="row">
    <style media="screen">
    .color {color: {{$seccion['0']->color}} !important; transition:.5s ease all;}
    </style>
    <div class="col-xs-12 col-sm-12 col-md-2">
      <div>
        <div class="logo-main">
          <a href="{{url('/')}}">
            <img src="{{asset('storage/' . setting('site.logo'))}}" alt="Dinámicamente logotipo">
          </a>
        </div>
      </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-10">
      <ul class="list-inline float-right">

        <li class="text-light list-inline-item text-center">
          <div class="selector-menu dn"><img class="img-selector" src="{{asset('storage/' . $seccion['0']->selector) }}" alt="selector"></div>
          <a href="{{url('/')}}">
            INICIO
          </a></li>
          <li class="text-light list-inline-item text-center">
            <div class="selector-menu dn"><img class="img-selector" src="{{asset('storage/' . $seccion['0']->selector) }}" alt="selector"></div>
            <a href="#">ARTÍCULOS DE AYUDA</a></li>
          <div uk-dropdown="pos: bottom-justify">
            <ul class="uk-nav uk-dropdown-nav back-none">
              @foreach($categorias as $cat)
              <li><a href="{{url('/') . '/covid/articulos-de-ayuda/' .$cat->slug .'/'}}">{{$cat->nombre}}</a></li>
              @endforeach
            </ul>
          </div>
          <li class="text-light list-inline-item text-center">
<div class="selector-menu dn"><img class="img-selector" src="{{asset('storage/' . $seccion['0']->selector) }}" alt="selector"></div>
<a href="#mapa">AYUDA A ALGUIEN</a></li>
          <li class="text-light list-inline-item text-center">
<div class="selector-menu dn"><img class="img-selector" src="{{asset('storage/' . $seccion['0']->selector) }}" alt="selector"></div>
<a href="{{url('infantil')}}">INFANTIL</a></li>
          <li class="text-light list-inline-item text-center">
<div class="selector-menu dn"><img class="img-selector" src="{{asset('storage/' . $seccion['0']->selector) }}" alt="selector"></div>
<a href="{{url('juvenil')}}">JUVENIL</a></li>
          <li class="text-light list-inline-item text-center">
<div class="selector-menu dn"><img class="img-selector" src="{{asset('storage/' . $seccion['0']->selector) }}" alt="selector"></div>
<a href="{{url('parental')}}">PARENTAL</a></li>

          <li style="float: right;" class="mt-3">
<a class="p-1" target="_blank" href="{{setting('site.twitter')}}">
<span style="color:#00acee" class="fa-stack">
  <i class="fa fa-circle fa-stack-2x"></i>
  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
</span>
<a  class="p-1"target="_blank" href="{{setting('site.facebook')}}">
<span style="color: #3b5998" class="fa-stack">
  <i class="fa fa-circle fa-stack-2x"></i>
  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
</span>
</a>
<a class="p-1" target="_blank" href="{{setting('site.instagram')}}">
<span style="color: #8a3ab9" class="fa-stack">
  <i class="fa fa-circle fa-stack-2x"></i>
  <i class="fab fa-instagram fa-stack-1x fa-inverse"></i>
</span>
</a>
<a class="p-1" target="_blank" href="{{setting('site.youtube')}}">
<span style="color: #c4302b" class="fa-stack">
  <i class="fa fa-circle fa-stack-2x"></i>
  <i class="fab fa-youtube fa-stack-1x fa-inverse"></i>
</span>
   </a>
          </li>
          <hr>
        </ul>
      </div>
    </div>
  </div>
  <div class="container mobile">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-2">
        <div>
          <div class="logo-main menu-mob">
            <a href="{{url('/')}}">
              <img src="{{asset('storage/' . setting('site.logo'))}}" alt="Dinámicamente logotipo">
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
