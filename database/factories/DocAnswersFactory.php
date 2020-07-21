<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\doc_answers;
use Faker\Generator as Faker;

$factory->define(doc_answers::class, function (Faker $faker) {
    return [
        //
        "votes"=>rand(5,18),
        "answer"=>$faker->paragraph,
    ];
});