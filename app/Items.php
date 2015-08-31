<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Items extends Model
{
    public function comments()
    {
          return $this->hasMany('App\Comments');
    }
    public function getTimeagoAttribute()
    {
    	$date = \Carbon\Carbon::createFromTimeStamp(strtotime($this->created_at))->diffForHumans();
    	return $date;
    }
}
