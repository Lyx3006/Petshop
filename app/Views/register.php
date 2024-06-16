<?= $this->extend('layout2') ?>
<?= $this->section('content') ?>

<?php
$username = [
    'name' => 'username',
    'id' => 'username',
    'value' => null,
    'class' => 'form-control'
];
$password = [
    'name' => 'password',
    'id' => 'password',
    'class' => 'form-control'
];
$repeatPassword = [
    'name' => 'repeatPassword',
    'id' => 'repeatPassword',
    'class' => 'form-control'
];
$session = session();
$errors = $session->getFlashdata('errors');
?>

<section class="vh-100" style="background-color: #508bfc;">
    <div class="container py-5 h-50">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card shadow-2-strong" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">

                        <h1 class="text-center">Daftar</h1>

                        <?php if ($errors != null) : ?>
                            <div class="alert alert-danger" role="alert">
                                <h4 class="alert-heading">Terjadi Kesalahan</h4>
                                <hr>
                                <p class="mb-0">
                                    <?php
                                    foreach ($errors as $err) {
                                        echo $err . '<br>';
                                    }
                                    ?>
                                </p>
                            </div>
                        <?php endif ?>

                        <?= form_open('Auth/register') ?>
                        <div class="form-group">
                            <?= form_label("Username", "username") ?>
                            <?= form_input($username) ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Password", "password") ?>
                            <?= form_password($password) ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Repeat Password", "repeatPassword") ?>
                            <?= form_password($repeatPassword) ?>
                        </div>
                        <div class="text-right">
                            <?= form_submit('submit', 'Submit', ['class' => 'btn btn-primary btn-lg btn-block']) ?>
                        </div>

                        <?= form_close() ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?= $this->endSection() ?>