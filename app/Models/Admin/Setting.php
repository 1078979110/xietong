<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    //
    protected $table = 'setting';
    protected $guarded = [];

    public function setBannersAttribute($banners)
    {
        if (is_array($banners)) {
            $this->attributes['banners'] = json_encode($banners);
        }
    }

    public function getBannersAttribute($banners)
    {
        return is_null(json_decode($banners, true))?[]:json_decode($banners, true);
    }
}
