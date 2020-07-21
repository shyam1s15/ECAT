<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\doc_question;
use Faker\Generator as Faker;

$factory->define(doc_question::class, function (Faker $faker) {
    return [
        //
        "question"=>$faker->sentences,
        "hint"=>$faker->sentence,
        'votes'=>rand(5,30),
    ];
});