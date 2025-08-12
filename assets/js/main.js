const botaoMenu = document.getElementById('btn-menu');
const menuMobile = document.getElementById('menu-mobile');

botaoMenu.addEventListener('click', () => {
    menuMobile.classList.toggle('menu-fechado');
    menuMobile.classList.toggle('menu-aberto');
});

//parte do carrossel
