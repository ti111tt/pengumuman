<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Itema extends Model
{
    protected $table = 'itema';
    protected $fillable = ['name', 'description', 'initial_price'];

    public function auctions()
    {
        return $this->hasMany(Auction::class);
    }
}
