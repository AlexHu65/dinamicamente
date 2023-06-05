<?php

use Illuminate\Database\Seeder;

class LocalidadesTableSeeder extends Seeder
{
  /**
  * Run the database seeds.
  *
  * @return void
  */
  public function run()
  {
    $longitude = (float) 20.677804;
    $latitude = (float) -101.366018;
    $limit = 50;
    for ($i=0; $i < $limit ; $i++) {
      // code...
      DB::table('locations')->insert([
        'lugar' => 'Calle Actino s/n / Fracc. La Esperanza',
        'nombre' => 'Calle Actino s/n / Fracc. La Esperanza',
        'telefono' => '4778651262',
        'coordenadas' => $longitude . ',' . $latitude,
        'activo' => '1',
      ]);
    }
  }
}
