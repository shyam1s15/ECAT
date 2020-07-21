<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class doc_mcq extends Model
{
    //
    protected $table = 'doc_mcqs';

    // belong to one doc
    public function doc()
    {
        return $this->belongsTo('App\docs', 'mcq_id_for_doc');
    }

}