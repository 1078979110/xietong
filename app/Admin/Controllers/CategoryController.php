<?php

namespace App\Admin\Controllers;

use App\Models\Admin\Category;
use App\Models\Admin\Line;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Category';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Category());

        $grid->column('id', __('Id'));
        $grid->column('category_name', __('Category name'));
        $grid->column('company_id', __('Company id'))->display(function($company_id){
            $company = Line::company($company_id);
            return $company->company_name;
        });
        $grid->column('line_id', __('Line id'))->display(function($line_id){
            $line = Category::line($line_id);
            return $line->line_name;
        });
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(Category::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('category_name', __('Category name'));
        $show->field('line_id', __('Line id'));
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
        $form = new Form(new Category());

        $form->text('category_name', __('Category name'));
        $form->select('company_id', __('Company id'))->options(function(){
            return Line::companies();
        })->load('line_id','/admin/api/lines');
        $form->select('line_id', __('Line id'));

        return $form;
    }
}
