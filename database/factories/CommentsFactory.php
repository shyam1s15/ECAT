<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\comments;
use Faker\Generator as Faker;

$factory->define(comments::class, function (Faker $faker) {
    return [
        //
        "description"=>$faker->sentences,
        "hint"=>$faker->sentence,
        "votes"=>rand(12,19),
    ];
});