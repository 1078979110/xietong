<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $table = 'products';
    protected $guarded = [];

    public static function category($category_id){
        return Category::find($category_id);
    }
}
