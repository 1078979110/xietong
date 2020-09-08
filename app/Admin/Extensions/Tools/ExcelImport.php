<?php
/**
 * Created by PhpStorm.
 * User: MNRC
 * Date: 2020/9/7
 * Time: 9:51
 */
namespace App\Admin\Extensions\Tools;

use Encore\Admin\Admin;
use Encore\Admin\Grid\Tools\AbstractTool;
use Illuminate\Support\Facades\Request;
class ExcelImport extends AbstractTool
{
    public function script()
    {
        return <<<EOT
   $('.file-upload').on('change', function () {
        $('.file-upload-form').submit();
    });
EOT;
    }
    public function render()
    {
        Admin::script($this->script());
        if (Request::path() == 'admin/products'){
            $url = 'excel/products';
        }else {
            $url = 'excel/price';
        }
        return view('admin.tools.excelimport')->with('url',$url);
    }

}