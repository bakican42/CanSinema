<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFilmResimleriTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('film_resimleri', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('film_id');
            $table->enum('pozisyon', ['kapak', 'galeri']);
            $table->string('resim_yolu');
            $table->timestamps();
            $table->softDeletes();

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
        Schema::dropIfExists('film_resimleri');
    }
}
