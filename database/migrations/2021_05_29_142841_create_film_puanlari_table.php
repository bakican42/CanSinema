<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFilmPuanlariTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('film_puanlari', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('film_id');
            $table->unsignedInteger('kullanici_id');
            $table->integer('puan');
            $table->timestamps();


            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('film_id')->references('id')->on('filmler');
            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('kullanici_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('film_puanlari');
    }
}
