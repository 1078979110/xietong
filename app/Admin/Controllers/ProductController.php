<?php

namespace App\Admin\Controllers;

use App\Models\Admin\Company;
use App\Models\Admin\Product;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use App\Models\Admin\Category;
use App\Models\Admin\Line;
use App\Admin\Extensions\Tools\ExcelImport;
class ProductController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '产品管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product());

        $grid->column('id', __('Id'));
        $grid->column('product_name', __('Product name'));
        $grid->column('company_id', __('Company'))->display(function(){
            $company = Product::company($this->company_id);
            return $company->company_name;
        });
        $grid->column('line_id', __('Line'))->display(function(){
            $line = Product::line($this->line_id);
            return $line->line_name;
        });
        $grid->column('category_id', __('Category'))->display(function(){
            $category = Product::category($this->category_id);
            return $category->category_name;
        });
        $grid->column('product_identifier', __('Product identifier'));
        $grid->column('product_specification', __('Product specification'));
        $grid->column('product_unit', __('Product unit'));
        $grid->column('product_r_certificate', __('Product r certificate'));
        $grid->column('product_r_c_invalidation', __('Product r c invalidation'));
        $grid->column('product_s_conditions', __('Product s conditions'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        $grid->tools(function($tools){
            $tools->append(new ExcelImport());
        });
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('product_name', __('Product name'));
        $show->field('product_identifier', __('Product identifier'));
        $show->field('product_specification', __('Product specification'));
        $show->field('product_unit', __('Product unit'));
        $show->field('product_r_certificate', __('Product r certificate'));
        $show->field('product_r_c_invalidation', __('Product r c invalidation'));
        $show->field('product_s_conditions', __('Product s conditions'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Product());

        $form->text('product_name', __('Product name'));
        $form->text('product_identifier', __('Product identifier'));
        $form->text('product_specification', __('Product specification'));
        $form->text('product_unit', __('Product unit'));
        $form->text('product_b_number', __('Product b number'));
        $form->text('product_m_date', __('Product m date'));
        $form->text('product_i_date', __('Product i date'));
        $form->text('product_r_certificate', __('Product r certificate'));
        $form->text('product_r_c_invalidation', __('Product r c invalidation'));
        $form->text('product_s_conditions', __('Product s conditions'));

        return $form;
    }
}
