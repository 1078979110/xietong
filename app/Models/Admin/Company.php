<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;
class Company extends Model
{
    //
    protected $table = "companies";
    protected $guarded = [];

    public function lines(){
        return $this->hasMany(Line::class, 'company_id');
    }

    public function line($company_id){
        $lines = Line::where('company_id', $company_id)->get()->toArray(true);
        return $lines;
    }
}
