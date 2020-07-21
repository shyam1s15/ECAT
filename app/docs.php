<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class docs extends Model
{
    //
    protected $table = 'docs';

    // belong to one creator
    public function creatorTeacher()
    {
        return $this->belongsTo('App\teachers', 'owner_id_for_teachers');
    }

    public function creatorStudent()
    {
        return $this->belongsTo('App\students', 'owner_id_for_students');
    }

    public function creatorOrganization()
    {
        return $this->belongsTo('App\organizations', 'owner_id_for_organizations');
    }

    // has many likes(optionally converted to incremental column )

    // has many mcq
    public function mcqs()
    {
        return $this->hasMany('App\doc_mcq', 'mcq_id_for_doc');
    }

    // has many Questions
    public function questions()
    {
        return $this->hasMany('App\doc_question', 'docQuestion_id_for_doc');
    }

    // has many comments
    public function comments()
    {
        return $this->hasMany('App\comments', 'comment_id_for_doc', 'local_key');
    }
}