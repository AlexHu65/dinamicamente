<!doctype html>
<html lang="en">
<head>
  <meta name="google-site-verification" content="{{setting('site.google-site-verification')}}" />
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="Description" content="{{setting('site.description')}}">
  <meta name="keywords" content="{{ setting('site.keywords')}}">
  <meta property="og:image:alt" content="{{setting('site.title')}}">
  <meta name="csrf-token" content="{{ csrf_token() }}" />
  @include('partials.assets')
  <link rel='shortcut icon' type='image/x-icon' href='{{asset('images/favicon.png')}}'/>
  <title> {{setting('site.title')}} - @yield('title')</title>
  <!--
  Este sitio ha sido desarrollado por Difraxion Group.
  Tel. +52 01 (477) 198 09 65
  E-mail: ventas@reed.com.mx
  www.difraxion.com
  León, Guanajuato
-->
<!-- analytics de google -->
<script async src="https://www.googletagmanager.com/gtag/js?id={{setting('site.google_analytics_tracking_id')}}"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', '{{setting('site.google_analytics_tracking_id')}}');
</script>
<script src="http://maps.google.com/maps/api/js"></script>
<script src="{{asset('js/gmaps.js')}}"></script>
<!-- GetButton.io widget -->
<script type="text/javascript">
(function () {
  var options = {
    facebook: "{{setting('site.facebookid')}}", // Facebook page ID
    whatsapp: "{{setting('site.whatsapp')}}", // WhatsApp number
    call_to_action: "", // Call to action
    button_color: "#FF318E", // Color of button
    position: "right", // Position may be 'right' or 'left'
    order: "facebook,whatsapp", // Order of buttons
  };
  var proto = document.location.protocol, host = "getbutton.io", url = proto + "//static." + host;
  var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
  s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
  var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
})();
</script>

<!-- /GetButton.io widget -->
</head>
<body>
  <div id="app">
    <header id="header">
      <nav>
        @include('covid.secciones.menu')
      </nav>
    </header>
    @include('covid.secciones.menuMobile')
    <main>
      <!-- banner -->
      @include('covid.secciones.banner')
      @yield('content')
    </main>
    <!--Start of Tawk.to Script-->
    <script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
      var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
      s1.async=true;
      s1.src='https://embed.tawk.to/59260965b3d02e11ecc66bb0/default';
      s1.charset='UTF-8';
      s1.setAttribute('crossorigin','*');
      s0.parentNode.insertBefore(s1,s0);
    })();
    </script>
    <!--End of Tawk.to Script-->
    <script type="text/javascript">
    marke = {!! json_encode($marcas) !!};
    </script>
    <div class="mapa-contacto mobile" id="map2"></div>

    @include('partials.mapa' , ['mapa' => $mapa ,'marcas' => $marcas])
    @include('covid.secciones.footer')
    @include('partials.scripts')
  </div>
</body>
</html>
