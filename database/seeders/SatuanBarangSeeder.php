<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\SatuanBarang;

class SatuanBarangSeeder extends Seeder
{
    public function run()
    {
        SatuanBarang::create(['nama' => 'Meter']);
        SatuanBarang::create(['nama' => 'Lusin']);
    }
}
