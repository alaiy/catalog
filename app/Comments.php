<?php

namespace App;
use App\User;
use Illuminate\Database\Eloquent\Model;

class Comments extends Model {

    protected $table = 'comments';
    protected $fillable = ['body', 'user_id', 'items_id'];

    public function users() {
        return $this->belongsTo('App\User', 'user_id');
    }

    public function items() {
        return $this->belongsTo('App\Items', 'items_id');
    }

    public function getTimeagoAttribute()
    {
    	$date = \Carbon\Carbon::createFromTimeStamp(strtotime($this->created_at))->diffForHumans();
    	return $date;
    }

}
