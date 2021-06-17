<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFilmlerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('filmler', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('kategori_id');
            $table->unsignedInteger('format_id');
            $table->unsignedInteger('dil_id');
            $table->unsignedInteger('salon_id');
            $table->string('adi');
            $table->string('yonetmen');
            $table->string('oyuncular');
            $table->string('sure');
            $table->text('fragman_url');
            $table->text('aciklama');
            $table->date('vizyon_tarihi');
            $table->decimal('bilet_ucreti', 10, 2);
            $table->timestamps();
            $table->softDeletes();

            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('kategori_id')->references('id')->on('kategoriler');
            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('format_id')->references('id')->on('film_formatlari');
            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('dil_id')->references('id')->on('film_dilleri');
            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('salon_id')->references('id')->on('salonlar');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('filmler');
    }
}
