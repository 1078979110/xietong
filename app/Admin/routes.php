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
    $router->resource('specifications', SpecificationController::class);
    $router->resource('users', SalerController::class);
    $router->resource('user-types', UserTypeController::class);
    $router->resource('orders', OrderController::class);

    //api
    //获取产品线列表，用于select
    $router->get('/api/lines', 'ApiController@getLinesForSelect');
    //获取商品列表，用于select,带分页
    $router->get('/api/products', 'ApiController@getProductsForSelect');

    //excel
    //导入产品
    $router->get('/excel/products', 'ExcelController@products');
    $router->post('/excel/products', 'ExcelController@products');
});
