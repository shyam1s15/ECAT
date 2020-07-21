<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class students extends Model
{
    //
    protected $table = 'students';


    // belongs to many interests(subejcts)
    public function subject()
    {
        return $this->belongsTo('App\subjects', 'student_id_for_subjects');
    }

    // has many docs
    public function docs()
    {
        return $this->hasMany('App\docs', 'owner_id_for_students', 'id');
    }

    // has many results
    // still no answer for this

}