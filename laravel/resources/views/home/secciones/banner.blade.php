<section id="homeBanner" class="main-banner">
  @foreach($banner as $ban)
  <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slideshow="animation: slide">
    <ul class="uk-slideshow-items">
      <li>
        <div class="uk-position-cover"  uk-slideshow-parallax="scale: 1.2,1.2,1">
          <img src="{{asset('storage/' . $ban->img)}}" alt="{{$ban->titulo}}" class="uk-animation-reverse uk-transform-origin-top-right" uk-scrollspy="cls: uk-animation-kenburns; repeat: true">
        </div>
        <div class="uk-position-cover" uk-slideshow-parallax="opacity: 0,0,0.2; backgroundColor: #000,#000"></div>
        <div class="uk-position-center uk-position-medium uk-text-center">
          <div uk-slideshow-parallax="scale: 1,1,0.8">
            <h2 class="atenna-regular" uk-slideshow-parallax="x: 200,0,0">{{$ban->titulo}}</h2>
            <p uk-slideshow-parallax="x: 400,0,0;">{{$ban->subtitle}}</p>
            <p class="mt-5" uk-slideshow-parallax="x: 350,0,0;"><a class="home-button" href="{{$ban->link}}">VER MÁS +</a></p>
          </div>
        </div>
      </li>
    </ul>
    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
  </div>
  @endforeach
</section>
