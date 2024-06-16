<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Petshop</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <!-- <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<?= base_url('vend/aos/aos.css') ?>" rel="stylesheet">
    <link href="<?= base_url('vend/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('vend/bootstrap-icons/bootstrap-icons.css') ?>" rel="stylesheet">
    <link href="<?= base_url('vend/boxicons/css/boxicons.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('vend/glightbox/css/glightbox.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('vend/swiper/swiper-bundle.min.css') ?>" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<?= base_url('vend/style.css') ?>" rel="stylesheet">



</head>

<body>

    <?= $this->include('navbar') ?>

    <main role="main" class="container">

        <?= $this->renderSection('content') ?>

    </main><!-- /.container -->


    <script src="<?= base_url('jquery-3.7.1.min.js') ?>"></script>
    <script src="<?= base_url('bootstrap-4.6.2/js/bootstrap.min.js') ?>"></script>
    <!-- Vendor JS Files -->

    <script src="<?= base_url('vend/aos/aos.js') ?>"></script>
    <script src="<?= base_url('vend/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
    <script src="<?= base_url('vend/glightbox/js/glightbox.min.js') ?>"></script>
    <script src="<?= base_url('vend/isotope-layout/isotope.pkgd.min.js') ?>"></script>
    <script src="<?= base_url('vend/swiper/swiper-bundle.min.js') ?>"></script>
    <script src="<?= base_url('vend/php-email-form/validate.js') ?>"></script>

    <!-- Template Main JS File -->
    <script src="<?= base_url('js/main.js') ?>"></script>

    <?= $this->renderSection('script') ?>

</body>

</html>