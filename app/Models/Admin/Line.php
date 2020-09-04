<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Line extends Model
{
    //
    protected $table = 'lines';
    protected $guarded = [];

    public static function company($company_id){
        return Company::find($company_id);
    }

    public static function companies(){
        return Company::pluck('company_name','id');
    }

    public static function categories($line_id){
        return Category::where('line_id', $line_id)->get();
    }
}
