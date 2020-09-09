<?php
/**
 * Created by PhpStorm.
 * User: MNRC
 * Date: 2020/9/7
 * Time: 10:02
 */

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\AdminController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Imports\ProductImport;
use Maatwebsite\Excel\Facades\Excel;
use Encore\Admin\Layout\Content;
use Encore\Admin\Widgets\Form;
class ExcelController extends AdminController
{

    /**
     *
     * @param $file 文件对象
     * @param array $option 后缀名，数组
     */
    protected function uploadFile($file, $option, $disk = 'admin') {
        $fileExtension = $file->getClientOriginalExtension();
        if (!in_array($fileExtension, $option)) {
            return array('status' => 'error', 'msg' => '文件类型不正确');
        }
        $tmpFile = $file->getRealPath();
        if (!is_uploaded_file($tmpFile)) {
            return array('status' => 'error', 'msg' => '非法上传途径');
        }
        $fileName = date('Y_m_d') . '/' . md5(time()) . mt_rand(0, 9999) . '.' . $fileExtension;
        if (Storage::disk($disk)->put($fileName, file_get_contents($tmpFile))) {
            return array('status' => 'success', 'msg' => '上传成功', 'info' => $fileName);
        }else{
            return array('status'=>'error', 'msg'=>'上传失败');
        }
    }

    public function products(Content $content, Request $request){
        $content->title('产品导入');
        if($request->isMethod('post')){
            $ext_arr = ['xls', 'xlsx'];
            $result = $this->uploadFile($request->file('files'), $ext_arr);
            if($result['status'] == 'success'){
                try{
                    $file = 'storage/'.$result['info'];
                    if(!file_exists($file)){
                        admin_toastr('文件路径不正确','error');
                        return redirect('admin/products');
                    }
                    Excel::import(new ProductImport, $file);
                }catch (\Exception $exception){
                    admin_toastr($exception->getMessage(), 'error');
                }
            }else{
                admin_toastr('文件上传失败','error');
                return redirect('admin/products');
            }
        }else{
            $form = new Form();
            $form->file('files', __('Product excel'))->required()->rules('mime:xls,xlsx,csv');
            $form->action('/admin/excel/products');
            $form->method('POST');
            $content->body($form);
            return $content;
        }
    }
}