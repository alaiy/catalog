@extends('layout')
@section('content')
<div class="row">
    @include('menu')
    <div class="col-md-9">

        <div class="thumbnail">
            <img class="img-responsive" src="{{ URL::asset('image/items/big/'.$item->image) }}" alt="">
            <div class="caption-full">
                <h4 class="pull-right">{{ $item->price }}$</h4>
                <h4><a href="#">{{ $item->name }}</a>
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

        <div class="well">
            @if( Auth::check() )
                <div class="text-right">
                    @include('comments.add')
                </div>
            @endif
            
            @if($comments)
                @foreach ($comments as $comment)
                <hr>
                <div class="row">
                    <div class="col-md-12">
                        <i>{{$comment->users->name}}</i>
                        <span class="pull-right">{{$comment->timeago}}</span>
                        <p>{{$comment->body}}</p>
                    </div>
                </div>
                @endforeach
            @endif
        </div>
    </div>
</div>
@stop