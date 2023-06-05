<section id="noticias" class="pt-3 pb-3">

  <div class="container">
    <div class="row">
      <div class="col">
        <h1 class="atenna-regular font-weight-bold pt-3 pb-3"> - <br>NOTICIAS QUE TE PUEDEN INTERESAR</h1>
      </div>
    </div>
    <div class="row">
      @foreach($noticias as $new)
      <div class="col-sm-12 col-xs-12 col-md-6">
        <div class="card-radius uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin" uk-grid>
          <div class="card-radius-img uk-card-media-left uk-cover-container">
            <a href="{{url('/') . '/noticias/' . $new->slug}}">

              <img src="{{asset('storage/' . $new->img)}}" alt="{{$new->titulo}}" uk-cover>
            </a>
            <canvas width="600" height="400"></canvas>
          </div>
          <div>
            <div class="uk-card-body uk-card-body-custom">
              <div class="h32"></div>
              <a href="{{url('/') . '/noticias/' . $new->slug}}">

                <h3 class="uk-card-title font-weight-bold">{{$new->titulo}}</h3>
              </a>
              <p>{{$new->bullet}}</p>
              <p>
                <span class="font-weight-bold text-uppercase" style="color: {{$new->categoria->color}}">

                  {{$new->categoria->nombre}}

                </span>
                <span><img src="{{asset('images/chevron.png')}}" alt="chevron"></span>
                <span class="date-noticias text-lowercase">{{date('M d Y', strtotime($new->created_at))}}</span><br>
                Por: {{$new->usuario->name}}
              </p>
            </div>
            <div style="background: {{$new->categoria->color}}" class="color-categoria"></div>
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</section>
