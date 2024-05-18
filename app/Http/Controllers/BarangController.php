<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\KategoriBarang;
use App\Models\SatuanBarang;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BarangController extends Controller
{
    public function index()
    {
        $barangs = Barang::paginate(5);
        return response()->json($barangs);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|string|max:20|min:2|unique:barangs',
            'user_input' => 'required|integer',
            'kode_kategori' => 'required|string|exists:kategori_barangs,kode',
            'satuan' => 'required|string|exists:satuan_barangs,nama',
            'jumlah' => 'nullable|integer|min:1|max:100'
        ]);

        $barang = Barang::create([
            'nama' => $request->nama,
            'user_input' => $request->user_input,
            'kode_kategori' => $request->kode_kategori,
            'satuan' => $request->satuan,
            'kode' => Str::random(6),
            'jumlah' => $request->jumlah,
        ]);

        return response()->json($barang);
    }

    public function update(Request $request, $id)
    {
        $barang = Barang::findOrFail($id);

        $request->validate([
            'nama' => 'required|string|max:20|min:2|unique:barangs,nama,' . $id,
            'user_input' => 'required|integer',
            'kode_kategori' => 'required|string|exists:kategori_barangs,kode',
            'satuan' => 'required|string|exists:satuan_barangs,nama',
            'jumlah' => 'nullable|integer|min:1|max:100'
        ]);

        $barang->update($request->all());

        return response()->json($barang);
    }
}