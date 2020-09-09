<?php
/**
 * Created by PhpStorm.
 * User: MNRC
 * Date: 2020/9/4
 * Time: 18:44
 */

namespace App\Admin\Controllers;


use App\Models\Admin\Line;
use App\Models\Admin\Product;
use Encore\Admin\Controllers\AdminController;
use Illuminate\Http\Request;

class ApiController extends AdminController
{
    public function getLinesForSelect(Request $request){
        $q = $request->q;
        return Line::where('company_id', $q)->get(['id','line_name as text']);
    }

    public function getProductsForSelect(Request $request){
        $q = $request->q;
        $products = Product::where('product_identifier','like', '%'.$q.'%')->paginate('10',['id', 'product_name as text', 'product_identifier']);
        foreach ($products as $key =>$product){
            $product->text = $product->text.'['.$product->product_identifier.']';
        }
        return $products;
    }
}