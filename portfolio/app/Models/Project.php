<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{

    protected $table = 'project';
    public $timestamps = false;

    protected $fillable = [
        'name',
        'text',
        'download_link',
        'photo_link',
        'project_photo_link',

    ];

    protected $guarded = ['id'];
}
