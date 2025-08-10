<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disalle Bolos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/style.css">
    

</head>

<body>

            <header>
                     <?php include __DIR__ . '/./includes/header.php'; ?>

            </header>

    <div class='section_img pb-5 '>
        <img src="./assets/img/layout/section_img.png" width='100%' height='100%' class='object-scale' alt="">
    </div>


    <main>

            <?php include __DIR__ . '/./includes/carrossel.php'; ?>

                <div class='faixa-sobre mb-5 d-flex align-items-center p-4 justify-content-md-around'>
                    <h1>Saiba mais sobre <span style="color: var(--amarelo);">nós</span></h1>
                    <img class="disalle d-none d-md-flex" src="../assets/img/layout/image.png" height="365" width="365" alt="Foto da Disalle">
                </div>

            <img class = 'divisor' src='' height=50 width=50 alt='divisor de contéudo'>

            <div class='container-conteudo-sobre d-flex justify-content-around m-5'>

                <p class='fs-2 text-center ml-2 h-25 w-25' style='color: var(--preto);'>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur earum enim ullam praesentium, voluptatum consequatur 
                        suscipit sunt molestiae eos officiis saepe temporibus, ex repudiandae! Quasi incidunt numquam porro 
                        distinctio aspernatur minus! Atque quisquam tempore asperiores illum aliquam pariatur corporis voluptates!
                </p>

            <img class= 'mt-4' src='https://i.pinimg.com/1200x/54/3d/a3/543da3b715f6fd644751d384b1ccb28a.jpg' height='450' width=750 alt='Foto em grupo - Disalle Bolos'>

            </div>


    </main>

    <footer>

    <?php include __DIR__ . '/./includes/footer.php'; ?>

    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>

</body>

</html>