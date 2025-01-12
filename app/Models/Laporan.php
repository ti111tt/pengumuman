<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Laporan extends Model
{
    use HasFactory;

    protected $table = 'laporan';
    protected $fillable = ['lelang_id', 'total_penawaran', 'harga_akhir'];

    public function lelang()
    {
        return $this->belongsTo(Lelang::class);
    }
}
