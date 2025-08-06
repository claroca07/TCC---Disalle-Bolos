const botaoMenu = document.getElementById('btn-menu');
const menuMobile = document.getElementById('menu-mobile');

botaoMenu.addEventListener('click', () => {
    menuMobile.classList.toggle('menu-fechado');
    menuMobile.classList.toggle('menu-aberto');
});

//parte do carrossel

const track = document.getElementById("carouselTrack");
const prevBtn = document.getElementById("prev");
const nextBtn = document.getElementById("next");

let currentIndex = 0;

const imgWidth = 300 + 20; // largura da imagem + margem dos lados

prevBtn.addEventListener("click", () => {
  if (currentIndex > 0) {
    currentIndex--;
    updateCarousel();
  }
});

nextBtn.addEventListener("click", () => {
  const maxIndex = track.children.length - 1;
  if (currentIndex < maxIndex) {
    currentIndex++;
    updateCarousel();
  }
});

function updateCarousel() {
  const offset = -currentIndex * imgWidth;
  track.style.transform = `translateX(${offset}px)`;
}
