<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\teachers;
use Faker\Generator as Faker;

$factory->define(teachers::class, function (Faker $faker) {
    return [
        //
        "faculty_name" => $faker->name,

        "email" => $faker->unique()->safeEmail,

        "address" => $faker->address,
        "description" => $faker->catchPhrase,
        "contact" => Str::random(10),
        "img_url" => "https://source.unsplash.com/300x300/?campus,college",
    ];
});