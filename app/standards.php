<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class standards extends Model
{
    //
    protected $table = 'standards';

    // belongs to many teachers.
    public function teacher()
    {
        return $this->belongsTo('App\teachers', 'standard_id_for_teachers', 'id');
    }

    // has many subjects/interest
    public function subjects()
    {
        return $this->hasMany('App\subjects', 'subject_id_for_standards', 'id');
    }
}