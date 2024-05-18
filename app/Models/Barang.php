<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama',
        'user_input',
        'kode_kategori',
        'satuan',
        'kode',
        'jumlah',
    ];

    public function kategori()
    {
        return $this->belongsTo(KategoriBarang::class, 'kode_kategori');
    }

    public function satuanBarang()
    {
        return $this->belongsTo(SatuanBarang::class, 'satuan');
    }
}

