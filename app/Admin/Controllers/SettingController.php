<?php

namespace App\Admin\Controllers;

use App\Models\Admin\Setting;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SettingController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Setting';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Setting());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('phone', __('Phone'));
        $grid->column('address', __('Address'));
        $grid->column('copyright', __('Copyright'));
        $grid->column('banners', __('Banners'));
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
        $show = new Show(Setting::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('phone', __('Phone'));
        $show->field('address', __('Address'));
        $show->field('copyright', __('Copyright'));
        $show->field('banners', __('Banners'));
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
        $form = new Form(new Setting());

        $form->text('name', __('Name'));
        $form->mobile('phone', __('Phone'));
        $form->text('address', __('Address'));
        $form->text('copyright', __('Copyright'));
        $form->textarea('banners', __('Banners'));

        return $form;
    }
}
