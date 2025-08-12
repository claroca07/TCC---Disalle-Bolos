<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/style.css">
    <script src="./assets/js/main.js"></script>
</head>

<body>

    <header class="d-flex justify-content-between p-4 px-3 align-items-center">
        <a href="./index.php">
            <h1 class="fs-1 mb-0 ms-4">DISALLE BOLOS</h1>
        </a>
        <button onclick = 'AbrirMenuMobile()' id="btn-menu" class="btn p-0 d-md-none me-3">
            <img id="nav_button" src="./assets/img/layout/menu-hamburguer.png" height="35" width="35" alt="Menu">
        </button>

        <?php 


        $header_items = [
            ['url' => '../pages/produtos/bolos.php', 'item_redirect' => 'Bolos'],
            ['url' => '../pages/produtos/salgados.php', 'item_redirect' => 'Salgados'],
            ['url' => '../pages/produtos/kit_festa.php', 'item_redirect' => 'Kit-Festas'],
            ['url' => '../pages/produtos/mini_lanches.php', 'item_redirect' => 'Mini Lanches'],
            ['url' => '../pages/carrinho/carrinho.php', 'item_redirect' => '<img id="buy_button" src="./assets/img/layout/carrinho de compras.png" height="35" width="35" alt="Carrinho">'],
        ];
   
        
        ?>

        <div class="menu-desktop d-none d-md-flex justify-content-around">
            <ul class="menu-ul-desktop d-flex mb-0 align-items-center p-3">

                <?php 

                    foreach ($header_items as $item) {
                        
                            ?> 
                                <li class="nav-item mx-2">
                                <a class="nav-link" href=<?=$item['url']?>> <?=$item['item_redirect']?> </a>
                   
                                </li>
                            
                            <?php
                              
                    }
                
                ?>

               

    
    <div id="menu-mobile" class="menu-fechado d-md-none">
        <ul class="menu-ul p-0">

              <?php 

                    foreach ($header_items as $item) {
                        
                            ?> 
                                <li class="nav-item ms-5">
                                <a class="nav-link" href=<?=$item['url']?>> <?=$item['item_redirect']?> </a>
                   
                                </li>
                            
                            <?php
                              
                    }
                
                ?>

            

</body>


</html>