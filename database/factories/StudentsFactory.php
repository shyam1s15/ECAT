<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\students;
use Faker\Generator as Faker;

$factory->define(students::class, function (Faker $faker) {
    return [
        "stu_name"=>$faker->name,
        "email"=>$faker->unique()->safeEmail,
        "address"=>$faker->address,
        "description"=>$faker->text,
        "contact"=>Str::random(10),
        // "img_url"=>asset('storage/assets/sample.pdf'),
        "img_url" => "https://source.unsplash.com/300x300/?student"
    ];
});