<section id="homeBanner" class="main-banner desktop">
  @foreach($banner as $ban)
  <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slideshow="animation: slide">
    <ul class="uk-slideshow-items">
      <li>
        <div>
          <img src="{{asset('storage/' . $ban->img)}}" alt="{{$ban->titulo}}" class="w-100">
        </div>
        <div class="uk-position-center uk-position-medium uk-text-center">
          <div>
            <h2 class="atenna-regular">{{$ban->titulo}}</h2>
            <p>{{$ban->subtitle}}</p>
            <?php $slug = ($seccion[0]->slug == 'home' ? '/' : '/'.$seccion[0]->slug .'/'); ?>
            <p class="mt-5"><a href="{{url('/') . $slug . 'articulos-de-ayuda/'}}" style="background: {{$seccion[0]->color}}" class="home-button" href="{{$ban->link}}">VER MÁS +</a></p>
          </div>
        </div>
      </li>
    </ul>
    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
  </div>
  @endforeach
</section>
<section id="homeBannerMobie" class="main-banner mobile">
  @foreach($banner as $ban)
  <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slideshow="animation: slide">
    <ul class="uk-slideshow-items">
      <li>
        <div class="uk-position-cover" >
          <img src="{{asset('storage/' . $ban->img_mob)}}" alt="{{$ban->titulo}}" class="w-100">
        </div>
        <div class="uk-position-center uk-position-medium uk-text-center">
          <div>
            <h2 class="atenna-regular">{{$ban->titulo}}</h2>
            <p>{{$ban->subtitle}}</p>
            <?php $slug = ($seccion[0]->slug == 'home' ? '/' : '/'.$seccion[0]->slug .'/'); ?>
            <p class="mt-5"><a href="{{url('/') . $slug . 'articulos-de-ayuda/'}}" style="background: {{$seccion[0]->color}}" class="home-button" href="{{$ban->link}}">VER MÁS +</a></p>
          </div>
        </div>
      </li>
    </ul>
    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
  </div>
  @endforeach
</section>
