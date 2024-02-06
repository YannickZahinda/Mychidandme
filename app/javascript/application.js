// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "trix"
import "@rails/actiontext"
import "chartkick"
import "Chart.bundle"


//= require semantic-ui
//= require jquery
//= require slick




function initializeSlider() {
  $('.slider:not(.slick-initialized)').slick({
    autoplay: true,
    autoplaySpeed: 3000,
    prevArrow: '<button type="button" class="prev"> << </button>',
    nextArrow: '<button type="button" class="next"> >> </button>'
  });
}

function initialize() {
  initializeSlider();
}


const collapsibles = document.querySelectorAll(".collapsible");
collapsibles.forEach((item) => 
  item.addEventListener("click", function() {
    this.classList.toggle("collapsible__expanded")
  })
)

