<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class doc_question extends Model
{
    //
    protected $table = 'doc_questions';

    // has many doc_answers
    public function answers()
    {
        return $this->hasMany('App\doc_answers', 'docQuesAns_id_for_docQuestion');
    }

    // belong to one doc
    public function doc()
    {
        return $this->belongsTo('App\docs', 'docQuestion_id_for_doc');
    }


}