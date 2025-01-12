<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class lelang extends Model
{
    use HasFactory;

    protected $table = 'lelang';
    protected $fillable = ['barang_id', 'status', 'tanggal_mulai', 'tanggal_selesai'];

    public function barang()
    {
        return $this->belongsTo(Barang::class);
    }
}
