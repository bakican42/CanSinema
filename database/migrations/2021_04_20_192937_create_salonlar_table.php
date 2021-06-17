<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalonlarTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salonlar', function (Blueprint $table) {
            $table->increments('id');
            $table->string('adi');
            $table->unsignedInteger('avm_id');
            $table->boolean('aktif_mi');
            $table->integer('kapasite')->default(0);
            $table->timestamps();
            $table->softDeletes();

            //iki tablo arasında ki ilişkisel bağlantı sağlanıyor..
            $table->foreign('avm_id')->references('id')->on('avmler');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('salonlar');
    }
}
