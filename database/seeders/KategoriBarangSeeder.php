<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\KategoriBarang;

class KategoriBarangSeeder extends Seeder
{
    public function run()
    {
        KategoriBarang::create(['kode' => 'KT001', 'nama' => 'Kitchen set']);
        KategoriBarang::create(['kode' => 'FS001', 'nama' => 'Family set']);
    }
}