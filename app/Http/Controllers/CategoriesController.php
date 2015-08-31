<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categories;
use App\Items;
use App\Users;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;

class CategoriesController extends Controller
{
    public function index($id = 0) 
    {
        //get rundom category
        if($id == 0) {
            $category = Categories::where('parent_id', '!=', 0)->orderBy(DB::raw('RAND()'))->take(1)->get();
            $id = $category[0]->id;
        }
        //get all categories for menu
        $categories = Categories::all();
        $categories = $categories->sortBy('sort_id');
        //get categories for slider
        $sliders = Categories::where('parent_id', '!=', 0)->orderBy(DB::raw('RAND()'))->take(3)->get();
        //get items
        $items = Items::where('categories_id', '=', $id)->get();

        $data = [
            'categories' => $categories,
            'items' => $items,
            'id' => $id,
            'sliders' => $sliders
        ];
        
        return view('categories.index', $data);
    }   
}
