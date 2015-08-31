<div class="col-md-3">
            <div id="sidebar" class="well sidebar-nav">
                @foreach ($categories as $category)
                    @if ($category->parent_id == 0)
                        @if ($category->parent_id != 1)
                            </ul>
                        @endif
                        <h5><i class="glyphicon glyphicon-plus"></i>
                            <b>{{ $category->name }}</b>
                        </h5>
                        <ul class="nav nav-pills nav-stacked">
                    @else
                        @if ($category->id == $id)
                            <li class="active"><a href="{{ url('categories/'.$category->id) }}">{{ $category->name }}</a></li>
                        @else
                            <li><a href="{{ url('categories/'.$category->id) }}">{{ $category->name }}</a></li>
                        @endif
                    @endif
                @endforeach
            </ul>
            </div>
</div>