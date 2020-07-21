<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class organization extends Model
{
    //
    protected $table = 'organizations';

    //has many standards
    public function standards()
    {
        return $this->hasMany('App\standards', 'standard_id_for_org', 'id');
    }

    // has many teachers
    public function teachers()
    {
        return $this->hasMany('App\teachers', 'teacher_id_for_organization', 'id');
    }


    // has many docs
    public function docs()
    {
        return $this->hasMany('App\docs', 'owner_id_for_organizations', 'id');
    }

}