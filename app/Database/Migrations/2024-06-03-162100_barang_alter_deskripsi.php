<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TransaksiAlterAlamat extends Migration
{

    public function up()
    {
        $fields = [
            'deskripsi' => [
                'type' => 'TEXT'
            ],

        ];

        $this->forge->addColumn('barang', $fields);
    }
    public function down()
    {
        $this->forge->dropColumn('barang', ['deskripsi']);
    }
}
