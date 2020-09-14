<?php

namespace App\Admin\Controllers;

use App\Models\Admin\Order;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class OrderController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Order';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Order());

        $grid->column('id', __('Id'));
        $grid->column('order_id', __('Order id'));
        $grid->column('order_buyer', __('Order buyer'))->display(function(){
            $user = Order::user($this->order_buyer);
            return $user->name;
        });
        $ordertype = [1=>'warning', 2=>'success'];
        $grid->column('order_type', __('Order type'))->label($ordertype);
        $grid->column('order_price', __('Order price'));
        //$status_
        $grid->column('order_status', __('Order status'));
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
        $show = new Show(Order::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('order_id', __('Order id'));
        $show->field('order_buyer', __('Order buyer'));
        $show->field('order_type', __('Order type'));
        $show->field('order_price', __('Order price'));
        $show->field('order_status', __('Order status'));
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
        $form = new Form(new Order());

        $form->text('order_id', __('Order id'));
        $form->text('order_buyer', __('Order buyer'));
        $form->text('order_type', __('Order type'));
        $form->decimal('order_price', __('Order price'));
        $form->text('order_status', __('Order status'));

        return $form;
    }
}
