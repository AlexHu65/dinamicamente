<div class="menu-wraper">
  <div class="btn-bg">

    <div class="menu-btn style-1">
      <span class="menu-row top"></span>
      <span class="menu-row mid"></span>
      <span class="menu-row bot"></span>
    </div>

  </div>

</div>
<div class="menu-items p-5">
  <ul>
    <li class="text-light text-center">
      <a href="{{url('/')}}">
        <img src="{{asset('storage/' . setting('site.logo'))}}" alt="Dinámicamente logotipo">
      </a>
    </li>
    <br>
    <li class="text-light text-center">
      <a href="{{url('/')}}">
        INICIO
      </a>
    </li>
<li class="text-light text-center">
  <a href="{{url('covid')}}">
    COVID-19
  </a>
</li>
    <li class="text-light  text-center">
      <a href="#">ARTÍCULOS DE AYUDA</a>
      <ul class="uk-nav uk-dropdown-nav back-none">
        @foreach($categorias as $cat)
        <li><a href="{{url('/') . '/articulos-de-ayuda/' .$cat->slug . '/'}}">{{$cat->nombre}}</a></li>
        @endforeach
      </ul>
    </li>

    <!-- <li class="text-light  text-center">
      <a href="#">CHAT EN LÍNEA</a>
    </li> -->
    <li class="text-light  text-center">
      <a href="#mapa">AYUDA A ALGUIEN</a>
    </li>
    <li class="text-light  text-center">
      <a href="{{url('infantil')}}">INFANTIL</a>
    </li>
    <li class="text-light  text-center">
      <a href="{{url('juvenil')}}">JUVENIL</a>
    </li>
    <li class="text-light  text-center">
      <a href="{{url('juvenil')}}">PARENTAL</a>
    </li>
    <!-- <li class="text-light  text-center">
      <a href="#">EXPERIENCIA VR</a>
    </li> -->
    <li class="text-light  text-center">

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

  </ul>
</div>
