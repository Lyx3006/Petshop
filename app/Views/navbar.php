<?php
$session = session();
?>

<header id="header" class="d-flex">
    <div class="container d-flex justify-content-between">
        <div id="logo">
            <h1><a href="<?= site_url('home/index') ?>">Pet<span>shop</span></a></h1>
        </div>


        <nav class="navbar" id="navbar">
            <?php if ($session->get('isLoggedIn')) : ?>
                <ul>
                    <li>
                        <a class="nav-link scrollto" href="<?= site_url('home/index') ?>">Home</a>
                    </li>
                    <?php if (session()->get('role') == 0) : ?>
                        <li>
                            <a class="nav-link scrollto" href="<?= site_url('barang/index') ?>">List Barang</a>
                        </li>

                        <li>
                            <a class="nav-link scrollto" href="<?= site_url('transaksi/index') ?>">Transaksi</a>
                        </li>
                    <?php else : ?>
                        <li>
                            <a class="nav-link scrollto" href="<?= site_url('etalase/index') ?>">Etalase</span></a>
                        </li>
                    <?php endif ?>
                </ul>
            <?php endif ?>

            <ul>
                <?php if ($session->get('isLoggedIn')) : ?>
                    <li>
                        <a class="nav-link scrollto" href="<?= site_url('auth/logout') ?>">Logout</a>
                    </li>
                <?php else : ?>
                    <li>
                        <a class="nav-link scrollto" href="<?= site_url('auth/login') ?>">Login</a>
                    </li>
                    <li>
                        <a class="nav-link scrollto" href="<?= site_url('auth/register') ?>">Register</a>
                    </li>
                <?php endif ?>
            </ul>


        </nav>

    </div>
</header>