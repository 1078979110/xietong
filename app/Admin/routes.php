<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');


    $router->resource('settings', SettingController::class);
    $router->resource('companies', CompanyController::class);
    $router->resource('lines', LineController::class);
    $router->resource('categories', CategoryController::class);
    $router->resource('products', ProductController::class);


    //api
    //获取产品线列表，用于select
    $router->get('/api/lines', 'ApiController@getLinesForSelect');

    //excel
    //导入产品
    $router->post('/excel/products', 'ExcelController@products');
});
