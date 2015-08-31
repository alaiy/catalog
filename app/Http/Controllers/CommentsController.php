<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\Comments;
use App\Items;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class CommentsController extends Controller
{
    public function add(Request $request) 
    {
        $validator = $this->validator($request->all());
       
        if ($validator->fails()) {
            $this->throwValidationException(
                $request, $validator
            );
        }
        $item = Items::find($request->items_id);
        $item->count_comments ++;
        $item->save();
        $this->create($request->all());
        return redirect('items/'.$request->items_id);
    }
    
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'body' => 'required'
        ]);
    }

    protected function create(array $data)
    {        
        return Comments::create([
            'body' => $data['body'],
            'user_id' => Auth::user()->id,
            'items_id' => $data['items_id']
        ]);
    }
    
}
