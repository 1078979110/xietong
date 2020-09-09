<?php

namespace App\Admin\Controllers;

use App\Models\Admin\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SalerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '销售管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new User());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('phone', __('Phone'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));
        $status = [
            'on'=>['value'=>0, 'text'=>'正常','color'=>'success'],
            'off'=>['value'=>1, 'text'=>'下架','color'=>'danger']
        ];
        $grid->column('status', __('Status'))->switch($status);
        $grid->actions(function($actions){
            $actions->disableView();
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
        $show = new Show(User::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('email', __('Email'));
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
        $form = new Form(new User());

        $form->text('name', __('Name'));
        $form->mobile('phone',__('Phone'));
        $form->password('password', __('Password'));
        $form->select('type', __('Type name'))->options(function(){
            return User::userType();
        });
        $status = [
            'on'=>['value'=>0, 'text'=>'正常','color'=>'success'],
            'off'=>['value'=>1, 'text'=>'下架','color'=>'danger']
        ];
        $form->switch('status', __('Status'))->states($status);
        return $form;
    }
}
