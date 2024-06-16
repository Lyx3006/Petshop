<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<?php

$nama = [
	'name' => 'nama',
	'id' => 'nama',
	'value' => null,
	'class' => 'form-control',
];

$harga = [
	'name' => 'harga',
	'id' => 'harga',
	'value' => null,
	'class' => 'form-control',
	'type' => 'number',
	'min' => 0,
];

$stok = [
	'name' => 'stok',
	'id' => 'stok',
	'value' => null,
	'class' => 'form-control',
	'type' => 'number',
	'min' => 1,
];

$deskripsi = [
	'name' => 'deskripsi',
	'id' => 'deskripsi',
	'value' => null,
	'class' => 'form-control',
];

$gambar = [
	'name' => 'gambar',
	'id' => 'gambar',
	'value' => null,
	'class' => 'form-control',
];

$submit = [
	'name' => 'submit',
	'id' => 'submit',
	'value' => 'Submit',
	'class' => 'btn btn-success',
	'type' => 'submit',
];

?>
<h1>Tambah Barang</h1>

<?= form_open_multipart('Barang/create') ?>
<div class="form-group">
	<?= form_label("Nama", "nama") ?>
	<?= form_input($nama) ?>
</div>

<div class="form-group">
	<?= form_label("Harga", "harga") ?>
	<?= form_input($harga) ?>
</div>

<div class="form-group">
	<?= form_label("Stok", "stok") ?>
	<?= form_input($stok) ?>
</div>

<div class="form-group">
	<?= form_label("Deskripsi", "deskripsi") ?>
	<?= form_input($deskripsi) ?>
</div>

<div class="form-group">
	<?= form_label("Gambar", "gambar") ?>
	<?= form_upload($gambar) ?>
</div>

<div class="text-center">
	<?= form_submit($submit) ?>
</div>

<?= form_close() ?>
<?= $this->endSection() ?>