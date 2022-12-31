<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class Internship extends Model
{
    public function getUsers()
    {

        return $this->belongsTo(User::class, "user_id", "id");


        // return $this->hasOne(User::class, "id", "author_id");

    }
}
