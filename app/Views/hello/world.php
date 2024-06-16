<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<!-- ======= hero Section ======= -->
<section id="hero">

    <div class="hero-content" data-aos="fade-up">
        <h2>Selamat Datang <?php echo session()->get('username'); ?>,</h2>
        <h3>Mari lihat koleksi kami</h3>
        <div>
            <a href="<?= site_url('etalase/index') ?>" class="btn-projects scrollto">Etalase</a>
        </div>
    </div>

    <div class="hero-slider swiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide" style="background-image: url(<?php echo base_url(); ?>/img/1.jpg)"></div>
            <div class="swiper-slide" style="background-image: url(<?php echo base_url(); ?>/img/2-1.jpg)"></div>
            <div class="swiper-slide" style="background-image: url(<?php echo base_url(); ?>/img/3-1.jpg)"></div>
        </div>
    </div>

</section><!-- End Hero Section -->

<?= $this->endSection() ?>