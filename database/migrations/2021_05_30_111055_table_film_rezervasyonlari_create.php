<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableFilmRezervasyonlariCreate extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('film_rezervasyonlari', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('kullanici_id');
            $table->unsignedInteger('film_id');
            $table->string('koltuk_adi');
            $table->boolean('bos_mu')->default(true);
            $table->timestamps();
            $table->softDeletes();


            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('kullanici_id')->references('id')->on('users');
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
        Schema::dropIfExists('film_rezervasyonlari');
    }
}
