<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class PostSeeder extends Seeder
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
            DB::table('posts')->insert([
                'user_id'=>$faker->numberBetween(1,20),
                'title'=>$faker->title(),
                'content'=>$faker->paragraph(1)
            ]);
        }
    }
}
