<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>

    <header class="d-flex justify-content-between p-4 px-3 align-items-center">
        <a href="../pages/homepage.php">
            <h1 class="fs-1 mb-0 ms-4">DISALLE BOLOS</h1>
        </a>
        <button id="btn-menu" class="btn p-0 d-md-none me-3">
            <img id="nav_button" src="../assets/img/layout/menu-hamburguer.png" height="35" width="35" alt="Menu">
        </button>

        <div class="menu-desktop d-none d-md-flex justify-content-around">
            <ul class="menu-ul-desktop d-flex mb-0 align-items-center p-3">
                <li class="nav-item mx-2">
                    <a class="nav-link" href="../pages/bolos.php">Bolos</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link" href="../pages/doces.php">Doces</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link" href="../pages/kit_festa.php">Kit Festa</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link" href="../pages/salgados.php">Salgados</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link" href="../pages/mini_lanches.php">Mini-Lanche</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link" href="../pages/carrinho.php">
                        <button class="btn p-0">
                            <img id="buy_button" src="../assets/img/layout/carrinho de compras.png" height="35" width="35" alt="Carrinho">
                        </button>
                    </a>
                </li>
            </ul>
        </div>
    </header>
    <div id="menu-mobile" class="menu-fechado d-md-none">
        <ul class="menu-ul p-0">
            <li class="nav-item ms-5">
                <a class="nav-link" href="../pages/bolos.php">BOLOS</a>
            </li>
            <li class="nav-item ms-5">
                <a class="nav-link" href="../pages/doces.php">DOCES</a>
            </li>
            <li class="nav-item ms-5">
                <a class="nav-link" href="../pages/kit_festa.php">KIT FESTA</a>
            </li>
            <li class="nav-item ms-5">
                <a class="nav-link" href="../pages/salgados.php">SALGADOS</a>
            </li>
            <li class="nav-item ms-5">
                <a class="nav-link" href="../pages/mini_lanches.php">MINI-LANCHE</a>
            </li>
            <li class="nav-item ms-5">
                <a class="nav-link" href="../pages/carrinho.php">
                    <button class="btn p-0">
                        <img id="buy_button" src="../assets/img/layout/carrinho de compras.png" height="35" width="35" alt="Carrinho">
                    </button>
                </a>
            </li>
    </div>
</body>
<script src="../assets/js/main.js"></script>

</html>