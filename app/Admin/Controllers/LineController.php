<?php

namespace App\Admin\Controllers;

use App\Models\Admin\Line;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Table;

class LineController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '产品线管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Line());

        $grid->column('id', __('Id'));
        $grid->column('line_name', __('Line name'));
        $grid->column('company_id',__('Company id'))->display(function(){
            $company = Line::company($this->company_id);
            return $company->company_name;
        });
        $grid->column(__('Under categories'))->display(function(){
            return '查看';
        })->expand(function(){
            $categories = Line::categories($this->id);
            $data = [];
            foreach ($categories as $key => $category){
                $data[$key]['id'] = $category->id;
                $data[$key]['category_name'] = $category->category_name;
                $data[$key]['created_at'] = $category->created_at;
            }
            return new Table([__('Id'),__('Category name'), __('Created at')], $data);
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
        $show = new Show(Line::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('line_name', __('Line name'));
        $show->field('company_id', __('Company id'));
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
        $form = new Form(new Line());

        $form->text('line_name', __('Line name'));
        $form->select('company_id', __('Company id'))->options(function(){
            return Line::companies();
        });

        return $form;
    }
}
