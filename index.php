<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disalle Bolos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>
    <?php include __DIR__ . '/includes/header.php'; ?>

    <div class='section_img pb-3'>
        <img src="assets/img/layout/section_img" width='100%' height='100%' class='object-scale' alt="">
    </div>

            <h4 class='mb-5 text-center h-50 w-50' style='color: var(--preto);'>
                   Conheça nossos produtos!
            </h4>

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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>

</body>

</html>