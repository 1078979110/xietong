<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Specification extends Model
{
    //
    protected $table = 'product_specification';
    protected $guarded = [];

    public static function product($product_id){
        return Product::find($product_id);
    }
}
