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

    <div class='section_img pb-5 '>
        <img src="assets/img/layout/section_img" width='100%' height='100%' class='object-scale' alt="">
    </div>

    <?php include __DIR__ . '/includes/carrossel.php'; ?>

    <div class='faixa-sobre mb-5 d-flex align-items-center p-4 justify-content-md-around'>
        <h1>Saiba mais sobre <span style="color: var(--amarelo);">nós</span></h1>
        <img class="disalle d-none d-md-flex" src="assets/img/layout/image.png" height="365" width="365" alt="Foto da Disalle">
    </div>

    <?php include __DIR__ . '/includes/footer.php'; ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>

</body>

</html>