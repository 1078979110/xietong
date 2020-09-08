<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;
class Company extends Model
{
    //
    protected $table = "companies";
    protected $guarded = [];

    public static function lines($company_id){
        return Line::where('company_id', $company_id)->get();
    }

}
