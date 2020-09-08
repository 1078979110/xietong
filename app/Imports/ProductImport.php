<?php

namespace App\Imports;

use App\Models\Admin\Company;
use App\Models\Admin\Line;
use App\Models\Admin\Category;
use App\Models\Admin\Product;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;//手动存储
use Illuminate\Support\Facades\DB;
class ProductImport implements ToCollection
{
    protected $columns = ['产品名称', '产品厂家','产品线','分类','产品货号','生产厂商','许可证书','规格型号', '单位', '批号', '生产日期', '有效日期', '注册证书', '注册证失效日期', '运输条件'];

    public function collection(Collection $rows){
        DB::connection()->enableQueryLog();
        $rows = $rows->toArray();
        unset($rows[0]);
        $msg = '';
        $insertData = [];
        foreach ($rows as $key => $value){
            if(!$value[0]){//如果第一列空，则直接跳转到下一条数据
                $msg .= '第'.($key+2).'行'.$this->columns[0].'为空，';
                continue;
            }
            if(!$value[4]){//如果货号列为空，则直接跳转到下一条数据
                $msg .= '第'.($key+2).'行'.$this->columns[4].'为空，';
                continue;
            }
            $has = Product::where('product_product_identifier', $value[4])->exists();
            if($has){
                continue;
            }
            if(!$value[1]){
                $msg .= '第'.($key+2).'行'.$this->columns[1].'为空，';
                continue;
            }
            $company_id = Company::where('company_name',$value[1])->value('id');
            if(!$company_id){
                $company_id = DB::table('products')->insertGetId(['company_name'=>$value[1]]);
            }
            if(!$value[2]){
                $msg .= '第'.($key+2).'行'.$this->columns[2].'为空，';
                continue;
            }
            $line_id = Line::where([['line_name', $value[2]],['company_id', $company_id]])->value('id');
            if(!$line_id){
                $line_id = DB::table('lines')->insertGetId(['line_name'=>$value[2],'company_id'=>$company_id]);
            }
            if(!$value[3]){
                $msg .= '第'.($key+2).'行'.$this->columns[3].'为空，';
                continue;
            }
            $category_id = Category::where([['category_name',$value[3]],['line_id', $line_id],['company_id',$company_id]])->value('id');
            if(!$category_id){
                $category_id = DB::table('categories')->insertGetId(['category_name'=>$value[3],'line_id'=> $line_id,'company_id'=>$company_id]);
            }
            $data_ = [
                'product_name'            => $value[0],//产品名称
                'company_id'              => $company_id,//产品厂家
                'line_id'                 => $line_id,//产品线
                'category_id'             => $category_id,//分类
                'product_identifier'      => $value[4],//货号
                'product_unit'            => $value[5],//单位
                'product_b_number'        => $value[6],//批号
                'product_m_date'          => $value[7],//生产日期
                'product_i_date'          => $value[8],//有效日期
                'product_r_certificate'   => $value[9],//注册证书
                'product_r_c_invalidation'=> $value[10],//注册证失效日期
                'product_s_conditions'    => $value[11] //运输条件
            ];

            DB::table('products')->insert($data_);
            //$insertData = $data_;
        }
        //DB::table('products')->insert($insertData);
        if($msg != ''){
            admin_warning('警告:以下数据未导入数据库',$msg);
        }else{
            admin_toastr('导入成功','success');
        }
        return redirect('/admin/products');
    }
}
