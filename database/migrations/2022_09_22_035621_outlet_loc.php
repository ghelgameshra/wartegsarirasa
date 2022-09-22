<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('outlets', function(Blueprint $table){
            $table->id();
            $table->string('name');
            $table->string('email');
            $table->string('telephone');
            $table->string('kecamatan_kelurahan');
            $table->string('kabupaten_kota');
            $table->string('provinsi');
            $table->text('maps_loc');
            $table->string('img')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('outlets');
    }
};
