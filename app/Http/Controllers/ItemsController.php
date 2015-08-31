<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categories;
use App\Items;
use App\Comments;
use App\User;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class ItemsController extends Controller
{
    public function index($id = 0) 
    {
        $categories = Categories::all();
        $categories = $categories->sortBy('sort_id');
        
        $item = Items::find($id);
        
        $comments = Comments::where('items_id', '=', $id)->get();
        
        $data = [
            'categories' => $categories,
            'item' => $item,
            'id' => $item->categories_id,
            'comments' => $comments
        ];
        
        return view('items.index', $data);
    }   
}
