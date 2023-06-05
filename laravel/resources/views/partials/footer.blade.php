<section class="call">
  <div class="text-center p-4">
    <div class="d-sm-flex justify-content-center">
      <div class="telefono-footer mr-2 text-light">
        <strong>Contáctanos</strong> al {{setting('site.telefono')}}
      </div>
      <div class="text-light call-button ml-3">
        <a href="tel:{{str_replace(' ', '',str_replace(')','',str_replace('(' , '' , setting('site.telefono'))))}}">LLAMAR</a>
      </div>
    </div>
  </div>
</section>
<footer class="p-4 text-light">
  <div class="container">
    <div class="d-sm-flex justify-content-center">
      <div class="logo">
        <img src="{{asset('storage/' . setting('site.logo'))}}" alt="Dinámicamente logotipo">
      </div>
      <div class="informacion">
        <span class="direccion">{{setting('site.principal')}}</span><br>
        <span class="telefono">
          Tel.: <a href="tel:{{str_replace(' ', '',str_replace(')','',str_replace('(' , '' , setting('site.telefono'))))}}">{{setting('site.telefono')}}</a>
        </span>|
<span class="email-footer">Email: <a href="mailto:{{setting('site.correo')}}"> {{setting('site.correo')}}</a></span>
        <span class="email"></span>
      </div>
    </div>
  </div>
</footer>
