<?php

namespace App\Admin\Controllers;

use App\Models\Admin\Company;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Table;

class CompanyController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '厂家管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Company());

        $grid->column('id', __('Id'));
        $grid->column('company_name', __('Company name'));
        $grid->column('company_license', __('Company license'));
        $grid->column('company_firm', __('Company firm'));
        $grid->column('company_address', __('Company address'));
        $grid->column(__('Under line'))->expand(function($model){
            $lines = $model->lines->map(function($line){
                return $line->only(['id', 'line_name', 'created_at']);
            });
            $data = [];
            foreach ($lines as $key=>$line){
                $data[$key]['id'] = $line['id'];
                $data[$key]['line_name'] = $line['line_name'];
                $data[$key]['created_at'] = $line['created_at'];
            }
            return new Table([__('Id'),__('Line name'), __('Created at')], $data);
        });
        $grid->column('top_image', __('Top image'))->image('','','80');
        $status = [
            'on' => ['value'=>1, 'text'=> '是', 'color'=> 'success'],
            'off' => ['value'=>0, 'text'=>'否', 'color'=>'danger' ]
        ];
        $grid->column('is_top', __('Is top'))->switch($status);
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
        $show = new Show(Company::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('company_name', __('Company name'));
        $show->field('company_license', __('Company license'));
        $show->field('company_firm', __('Company firm'));
        $show->field('company_address', __('Company address'));
        $show->field('top_image', __('Top image'));
        $show->field('is_top', __('Is top'));
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
        $form = new Form(new Company());

        $form->text('company_name', __('Company name'));
        $form->text('company_license', __('Company license'));
        $form->text('company_firm', __('Company firm'));
        $form->text('company_address', __('Company address'));
        $form->image('top_image', __('Top image'));
        $status = [
            'on' => ['value'=>1, 'text'=> '是', 'color'=> 'success'],
            'off' => ['value'=>0, 'text'=>'否', 'color'=>'danger' ]
        ];
        $form->switch('is_top', __('Is top'))->states($status);

        return $form;
    }
}
