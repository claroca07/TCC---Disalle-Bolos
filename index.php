<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disalle Bolos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/style.css">
<<<<<<< HEAD

=======
>>>>>>> 70da209916a0447cfa9fdbb011a5e5419bad7e46

</head>

<body>
    <?php include __DIR__ . '/includes/header.php'; ?>

<<<<<<< HEAD
    <header>

        <?php include __DIR__ . '/includes/header.php'; ?>

    </header>

    <!-- transformar isso aqui abaixo em elementos separados, fundo texto e boneca (motivos de responsividade,
      no mobile a distribuição dos elementos muda); deixar legivel -->

    <hr class='h-50 w-100 ' style='color: var(--preto)'>
    </hr>

    <div class="bem-vindas d-flex justify-content-center">
        <h3 class='main-txt mb-5' style='color: var(--preto);'>
            Conheça nossos produtos!
        </h3>
    </div>

    <!-- CARROSSEL nao deve ser um component, visto que ele so esta presente nessa pagina! -->

    <div class='faixa-sobre mb-5 d-flex align-items-center p-4 justify-content-md-around'>
        <h1>Saiba mais sobre <span style="color: var(--amarelo);">nós</span></h1>
        <img class="disalle d-none d-md-flex" src="./assets/img/layout/image.png" height="365" width="365" alt="Foto da Disalle">
    </div>

    <!-- precisa-se pegar os componentes do divisores no canva e juntar num arquivo so e salvar pra por aki -->
    <img class='divisor' src='' height=50 width=50 alt='divisor de contéudo'>

    <div class='conteudo-sobre mb-5 d-flex flex-column-reverse flex-md-row justify-content-center align-items-center'>

        <p class='fs-2 text-center ml-2 h-25 w-25' style='color: var(--preto);'>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur earum enim ullam praesentium, voluptatum consequatur
            suscipit sunt molestiae eos officiis saepe temporibus, ex repudiandae!
        </p>

        <img src='https://i.pinimg.com/1200x/54/3d/a3/543da3b715f6fd644751d384b1ccb28a.jpg' class='h-50 w-50' alt='Foto em grupo - Disalle Bolos'>


=======
    <div class='section_img pb-3'>
        <img src="assets/img/layout/section_img" width='100%' height='100%' class='object-scale' alt="">
>>>>>>> 70da209916a0447cfa9fdbb011a5e5419bad7e46
    </div>

            <h4 class='mb-5 text-center h-50 w-50' style='color: var(--preto);'>
                   Conheça nossos produtos!
            </h4>

<<<<<<< HEAD
    <footer>

        <?php include __DIR__ . '/includes/footer.php'; ?>

    </footer>

    <script src="assets/js/main.js"></script>
=======
    <?php include __DIR__ . '/includes/carrossel.php'; ?>

    <div class='faixa-sobre mb-5 d-flex align-items-center p-4 justify-content-md-around'>
        
            <h1>Saiba mais sobre <span style="color: var(--amarelo);">nós</span></h1>
            <img class="disalle d-none d-md-flex" src="assets/img/layout/image.png"  alt="Foto da Disalle">
        
    </div>

    

        <div class='conteudo-sobre mb-5 d-flex justify-content-around'>

            <p class='fs-2 mt-5 text-center h-25 w-25' style='color: var(--preto);'>
                    Desde de [ano] fazendo estória entregando personalidade, amor, momentos inesqueciveis e deliciosos!!!
            </p>

            <img src='https://i.pinimg.com/1200x/54/3d/a3/543da3b715f6fd644751d384b1ccb28a.jpg' alt='Foto em grupo - Disalle Bolos'>

            </div>


    

    <?php include __DIR__ . '/includes/footer.php'; ?>

>>>>>>> 70da209916a0447cfa9fdbb011a5e5419bad7e46
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>

</body>

</html>