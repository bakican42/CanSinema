<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFilmSeanslariTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('film_seanslari', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('seans_id');
            $table->unsignedInteger('film_id');
            $table->timestamps();

            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('seans_id')->references('id')->on('seanslar');
            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('film_id')->references('id')->on('filmler');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('film_seanslari');
    }
}
