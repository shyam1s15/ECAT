<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\subjects;
use Faker\Generator as Faker;

$factory->define(subjects::class, function (Faker $faker) {
    return [
        //
        "name"=>$faker->word,
    ];
});