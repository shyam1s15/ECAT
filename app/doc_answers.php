<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class doc_answers extends Model
{
    //

    protected $table = 'doc_answers';

    // belong to doc_question
    public function which_question()
    {
        return $this->belongsTo('App\doc_question', 'docQuesAns_id_for_docQuestion');
    }
}