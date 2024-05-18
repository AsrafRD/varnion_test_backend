<?php

namespace App\Http\Controllers;

use App\Models\SatuanBarang;
use Illuminate\Http\Request;

class SatuanBarangController extends Controller
{
    public function index()
    {
        return response()->json(SatuanBarang::all());
    }
}