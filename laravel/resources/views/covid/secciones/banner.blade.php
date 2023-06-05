<section id="homeBanner" class="main-banner desktop">
  @foreach($banner as $ban)
  <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slideshow="animation: slide">
    <ul class="uk-slideshow-items">
      <li>
        <div class="uk-position-cover">
          <img src="{{asset('storage/' . $ban->img)}}" alt="{{$ban->titulo}}" class="w-100 uk-animation-reverse uk-transform-origin-top-right">
        </div>
        <div class="uk-position-center uk-position-medium uk-text-center">
          <div>
            <h2 id="tituloCovid" style="color: {{$seccion[0]->color}};" class="atenna-regular">{{$ban->titulo}}</h2>
            <p id="parrafoCovid" class="text-light font-weight-light" >
              Nuestro personal especializado de psicología está <br>
              24 horas del día 365 días del año <br>
              <span id="spanCovid">llamanos <span class="font-weight-bold" style="color:{{$seccion[0]->color}};">800 290 00 24</span></span>
            </p>
          </div>
        </div>
      </li>
    </ul>
    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
  </div>
  @endforeach
</section>
<section id="homeBanner" class="main-banner mobile">
  @foreach($banner as $ban)
  <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slideshow="animation: slide">
    <ul class="uk-slideshow-items">
      <li>
        <div class="uk-position-cover">
          <img src="{{asset('storage/' . $ban->img_mob)}}" alt="{{$ban->titulo}}" class="w-100 uk-animation-reverse uk-transform-origin-top-right">
        </div>
        <div class="uk-position-center uk-position-medium uk-text-center">
          <div>
            <h2 id="tituloCovid" style="color: {{$seccion[0]->color}};" class="atenna-regular">{{$ban->titulo}}</h2>
            <p id="parrafoCovid" class="text-light font-weight-light" >
              Nuestro personal especializado de psicología está <br>
              24 horas del día 365 días del año <br>
              <span id="spanCovid">llamanos <span class="font-weight-bold" style="color:{{$seccion[0]->color}};">800 290 00 24</span></span>
            </p>
          </div>
        </div>
      </li>
    </ul>
    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
  </div>
  @endforeach
</section>
