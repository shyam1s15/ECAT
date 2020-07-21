<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class subjects extends Model
{
    //
    protected $table = 'subjects';

    // belong to one standard
    public function standard()
    {
        return $this->belongsTo('App\standards', 'subject_id_for_standards');
    }

    // has many exams
    // no solution defined

    // has many results
    // no solution defined

    // has many students
    public function students()
    {
        return $this->hasMany('App\students', 'student_id_for_subjects', 'id');
    }

    
}