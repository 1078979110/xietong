<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    //
    protected $table = 'users';
    protected $guarded = [];

    public static function userType(){
        return UserType::pluck('type_name', 'id');
    }
}
