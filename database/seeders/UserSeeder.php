<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;


class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i=0;$i<50;$i++){
            DB::table('users')->insert([
                'name'=>$faker->name(),
                'email'=>$faker->email(),
            ]);
        }

    }
}
