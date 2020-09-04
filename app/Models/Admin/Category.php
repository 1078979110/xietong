<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //
    public $table = 'categories';
    public $guarded = [];

    public static function line($line_id){
        return Line::find($line_id);
    }
}
