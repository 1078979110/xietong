<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    protected $table = 'orders';
    protected $guarded = [];

    public static function user($user_id){
        $user = User::find($user_id);
        return $user;
    }
}
