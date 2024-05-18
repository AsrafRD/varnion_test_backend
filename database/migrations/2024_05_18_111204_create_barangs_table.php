<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBarangsTable extends Migration
{
    public function up()
    {
        Schema::create('barangs', function (Blueprint $table) {
            $table->id();
            $table->string('nama')->unique()->nullable(false)->maxLength(20);
            $table->integer('user_input');
            $table->unsignedBigInteger('kode_kategori');
            $table->unsignedBigInteger('satuan'); // Ubah dari string ke unsignedBigInteger
            $table->string('kode')->unique()->maxLength(6);
            $table->integer('jumlah')->nullable()->unsigned()->max(100);
            $table->timestamps();

            $table->foreign('kode_kategori')->references('id')->on('kategori_barangs');
            $table->foreign('satuan')->references('id')->on('satuan_barangs'); // Ubah referensi ke id
        });
    }

    public function down()
    {
        Schema::dropIfExists('barangs');
    }
}