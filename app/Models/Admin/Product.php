<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $table = 'products';
    protected $guarded = [];

    public static function company($company_id){
        return Company::find($company_id);
    }

    public static function line($line_id){
        return Line::find($line_id);
    }

    public static function category($category_id){
        return Category::find($category_id);
    }

    public static function spcifications($product_id){
        return Specification::where('product_id',$product_id)->get();
    }
}
