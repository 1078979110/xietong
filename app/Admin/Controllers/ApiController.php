<?php
/**
 * Created by PhpStorm.
 * User: MNRC
 * Date: 2020/9/4
 * Time: 18:44
 */

namespace App\Admin\Controllers;


use App\Models\Admin\Line;
use Encore\Admin\Controllers\AdminController;
use Illuminate\Http\Request;

class ApiController extends AdminController
{
    public function getLinesForSelect(Request $request){
        $q = $request->q;
        return Line::where('company_id', $q)->get(['id','line_name as text']);
    }
}