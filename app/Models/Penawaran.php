<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penawaran extends Model
{
    use HasFactory;

    protected $table = 'penawaran';
    protected $fillable = ['lelang_id', 'user_id', 'harga_penawaran'];

    public function lelang()
    {
        return $this->belongsTo(Lelang::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
