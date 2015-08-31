<div class="text-right">
    <a class="btn btn-success btn-green" href="#reviews-anchor" id="open-review-box">Leave a Review</a>
</div>

<div class="row" id="post-review-box" style="display:none;">
    <div class="col-md-12">
        {!! Form::open(array('url' => 'comments/create')) !!}
        {!! Form::hidden('items_id', $item->id) !!}
        {!! Form::textarea('body', null, array('rows'=>'5','id'=>'new-comments','class'=>'form-control animated','placeholder'=>'Enter your comment here...')) !!}
        <div class="text-right">

          <a href="#" class="btn btn-danger btn-sm" id="close-review-box" style="display:none; margin-right:10px;"> </span>Cancel</a>
          <button class="btn btn-success btn-sm" type="submit">Save</button>
        </div>
        {!! Form::close() !!}
    </div>
</div>




    