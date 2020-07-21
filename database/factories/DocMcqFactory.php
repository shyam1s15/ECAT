<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\doc_mcq;
use Faker\Generator as Faker;

$factory->define(doc_mcq::class, function (Faker $faker) {
    return [
        //
        "question"=>$faker->sentences,
        "option1"=>$faker->sentence,
        "option2" => $faker->sentence,
        "option3" => $faker->sentence,
        "option4" => $faker->sentence,
        "ans"=>rand(1,5),
    ];
});