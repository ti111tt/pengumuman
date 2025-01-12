<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Auction extends Model
{
    protected $fillable = ['item_id', 'start_time', 'end_time', 'status'];

    public function item()
    {
        return $this->belongsTo(Itema::class);
    }

    public function bids()
    {
        return $this->hasMany(Bid::class);
    }
}
