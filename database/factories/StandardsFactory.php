<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\standards;
use Faker\Generator as Faker;

$factory->define(standards::class, function (Faker $faker) {
    return [
        //
        "standard_name"=>$faker->word,
    ];
});