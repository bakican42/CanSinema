<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes();
Route::get('logout', 'Auth\LoginController@logout');

Route::get('/', [
	'as' => 'index',
	'uses' => 'HomeController@index'
]);


Route::get('/anasayfa',                     ['as' => 'home', 'uses' => 'HomeController@index']);
Route::get('filmler',                        ['as' => 'filmler', 'uses' => 'FilmController@filmler']);
Route::get('trendler',                      ['as' => 'trendler', 'uses' => 'FilmController@trendler']);


Route::get('film-detay/{id}',                ['as' => 'film.detay', 'uses' => 'FilmController@index']);
Route::post('film-puan/{id}/puanla',         ['as' => 'film.puanla', 'uses' => 'FilmController@puan'])->middleware('auth');
Route::post('film-detay/{id}/yorum-ekle',    ['as' => 'film.yorum_ekle', 'uses' => 'FilmController@yorumEkle'])->middleware('auth');

Route::get('film-detay/{id}/rezervasyon',    ['as' => 'film.rezervasyon.create', 'uses' => 'RezervasyonController@create']);
Route::post('film-detay/{id}/rezervasyon',    ['as' => 'film.rezervasyon.store', 'uses' => 'RezervasyonController@store'])->middleware('auth');

/* Admin Sayfasona ait rotalar */

Route::group(['prefix' => 'admin', 'as' => 'admin.', 'middleware' => ['auth','admin']], function(){

    Route::get('/',             ['as' => 'index', 'uses' => 'Admin\HomeController@index']);


    Route::group(['prefix' => 'kullanicilar', 'as' => 'kullanicilar.'], function(){

        Route::get('/',                 ['as' => 'index', 'uses' => 'Admin\KullaniciController@index']);
        Route::post('{id}/guncelle',    ['as' => 'update', 'uses' => 'Admin\KullaniciController@update']);
        Route::get('{id}/sil',          ['as' => 'delete', 'uses' => 'Admin\KullaniciController@delete']);
    });

    Route::group(['prefix' => 'filmler', 'as' => 'filmler.'], function(){

        Route::get('listesi',        ['as' => 'index', 'uses' => 'Admin\FilmController@index']);

        Route::get('ekleme',          ['as' => 'create', 'uses' => 'Admin\FilmController@create']);
        Route::post('ekleme',         ['as' => 'store', 'uses' => 'Admin\FilmController@store']);
        Route::get('{id}/sil',        ['as' => 'delete', 'uses' => 'Admin\FilmController@delete']);

        Route::get('{id}/guncelle',   ['as' => 'show', 'uses' => 'Admin\FilmController@show']);
        Route::post('{id}/guncelle',  ['as' => 'update', 'uses' => 'Admin\FilmController@update']);

        Route::get('{id}/resim/sil', ['as' => 'resim.delete', 'uses' => 'Admin\FilmController@resimSil']);


        Route::group(['prefix' => 'kategoriler', 'as' => 'kategoriler.'], function(){
            Route::get('/',              ['as' => 'index', 'uses' => 'Admin\KategoriController@index']);
            Route::post('ekleme',        ['as' => 'create', 'uses' => 'Admin\KategoriController@store']);
            Route::get('{id}/sil',       ['as' => 'delete', 'uses' => 'Admin\KategoriController@delete']);
            Route::post('{id}/guncelle', ['as' => 'update', 'uses' => 'Admin\KategoriController@update']);
        });

        Route::group(['prefix' => 'formatlar', 'as' => 'formatlar.'], function(){
            Route::get('/',              ['as' => 'index', 'uses' => 'Admin\FilmFormatController@index']);
            Route::post('ekleme',        ['as' => 'create', 'uses' => 'Admin\FilmFormatController@store']);
            Route::get('{id}/sil',       ['as' => 'delete', 'uses' => 'Admin\FilmFormatController@delete']);
            Route::post('{id}/guncelle', ['as' => 'update', 'uses' => 'Admin\FilmFormatController@update']);
        });

        Route::group(['prefix' => 'diller', 'as' => 'diller.'], function(){
            Route::get('/',              ['as' => 'index', 'uses' => 'Admin\FilmDillerController@index']);
            Route::post('ekleme',        ['as' => 'create', 'uses' => 'Admin\FilmDillerController@store']);
            Route::get('{id}/sil',       ['as' => 'delete', 'uses' => 'Admin\FilmDillerController@delete']);
            Route::post('{id}/guncelle', ['as' => 'update', 'uses' => 'Admin\FilmDillerController@update']);
        });
    });

    Route::group(['prefix' => 'ayarlar', 'as' => 'ayarlar.'], function(){

        Route::group(['prefix' => 'salonlar', 'as' => 'salonlar.'], function(){
            Route::get('/',          ['as' => 'index', 'uses' => 'Admin\SalonController@index']);
            Route::post('ekleme',    ['as' => 'create', 'uses' => 'Admin\SalonController@store']);
            Route::get('{id}/sil',     ['as' => 'delete', 'uses' => 'Admin\SalonController@delete']);
            Route::post('{id}/guncelle', ['as' => 'update', 'uses' => 'Admin\SalonController@update']);
        });

        Route::group(['prefix' => 'seanslar', 'as' => 'seanslar.'], function(){
            Route::get('/',          ['as' => 'index', 'uses' => 'Admin\SeansController@index']);
            Route::post('ekleme',    ['as' => 'create', 'uses' => 'Admin\SeansController@store']);
            Route::get('{id}/sil',     ['as' => 'delete', 'uses' => 'Admin\SeansController@delete']);
            Route::post('{id}/guncelle', ['as' => 'update', 'uses' => 'Admin\SeansController@update']);
        });

        Route::group(['prefix' => 'iller', 'as' => 'iller.'], function(){
            Route::get('/',          ['as' => 'index', 'uses' => 'Admin\IllerController@index']);
            Route::post('ekleme',    ['as' => 'create', 'uses' => 'Admin\IllerController@store']);
            Route::get('{id}/sil',     ['as' => 'delete', 'uses' => 'Admin\IllerController@delete']);
            Route::post('{id}/guncelle', ['as' => 'update', 'uses' => 'Admin\IllerController@update']);
        });

        Route::group(['prefix' => 'avmler', 'as' => 'avmler.'], function(){
            Route::get('/',          ['as' => 'index', 'uses' => 'Admin\AvmController@index']);
            Route::post('ekleme',    ['as' => 'create', 'uses' => 'Admin\AvmController@store']);
            Route::get('{id}/sil',     ['as' => 'delete', 'uses' => 'Admin\AvmController@delete']);
            Route::post('{id}/guncelle', ['as' => 'update', 'uses' => 'Admin\AvmController@update']);
        });

    });

    Route::group(['prefix' => 'yorumlar', 'as' => 'yorumlar.'], function(){
        Route::get('/',                 ['as' => 'index',  'uses' => 'Admin\YorumController@index']);
        Route::get('durum/{id}/{durum}',      ['as' => 'durum', 'uses' => 'Admin\YorumController@status']);
        Route::get('{id}/sil',          ['as' => 'delete', 'uses' => 'Admin\YorumController@delete']);
    });

    Route::group(['prefix' => 'adminler', 'as' => 'adminler.'], function(){
        Route::get('/',                 ['as' => 'index',  'uses' => 'Admin\AdminController@index']);
        Route::post('{id}/guncelle',    ['as' => 'update',  'uses' => 'Admin\AdminController@update']);
        Route::post('ekle',             ['as' => 'create',  'uses' => 'Admin\AdminController@store']);
        Route::get('{id}/sil',          ['as' => 'delete',  'uses' => 'Admin\AdminController@delete']);
    });

    Route::group(['prefix' => 'slider', 'as' => 'slider.'], function(){
        Route::get('/',                 ['as' => 'index',  'uses' => 'Admin\SliderController@index']);

        Route::get('ekle',              ['as' => 'create',  'uses' => 'Admin\SliderController@create']);
        Route::post('ekle',             ['as' => 'store',  'uses' => 'Admin\SliderController@store']);

        Route::get('{id}/duzenle',             ['as' => 'show',  'uses' => 'Admin\SliderController@edit']);
        Route::post('{id}/duzenle',             ['as' => 'update',  'uses' => 'Admin\SliderController@update']);

        Route::get('{id}/delete',             ['as' => 'delete',  'uses' => 'Admin\SliderController@delete']);

    });
});
