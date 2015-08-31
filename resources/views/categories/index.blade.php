@extends('layout')
@section('content')
<div class="row">


    @include('menu')

    <div class="col-md-9">

        <div class="row carousel-holder">

            <div class="col-md-12">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <a href="{{ url('categories/'.$sliders[0]->id) }}"><img class="slide-image" src="{{ URL::asset('image/categories/big/'.$sliders[0]->image) }}" alt=""></a>
                        </div>
                        @for($i = 1; $i < count($sliders); $i++)
                        <div class="item">
                            <a href="{{ url('categories/'.$sliders[$i]->id) }}"><img class="slide-image" src="{{ URL::asset('image/categories/big/'.$sliders[$i]->image) }}" alt=""></a>
                        </div>
                        @endfor
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>

        </div>

        <div class="row">
            @foreach ($items as $item)
            <a href="{{ url('items/'.$item->id) }}">
                <div class="col-sm-4 col-lg-4 col-md-4">
                    <div class="thumbnail">
                        <img src="{{ URL::asset('image/items/small/'.$item->image) }}" alt="">
                        <div class="caption">
                            <h4 class="pull-right">{{ $item->price }}$</h4>
                            <h4><a href="{{ url('items/'.$item->id) }}">{{ $item->name }}</a>
                            </h4>
                            <p>{{ $item->description }}</p>
                        </div>
                        <div class="ratings">
                            <p class="pull-right">{{ $item->count_comments }} comments</p>
                            <p>
                               Added: {{ $item->timeago }}
                            </p>
                        </div>
                    </div>
                </div>
            </a>
            @endforeach

        </div>

    </div>

</div>
@stop