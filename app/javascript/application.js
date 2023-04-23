// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

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

document.addEventListener("turbo:load", function() {
  initialize()

  document.addEventListener("DOMContentLoaded", function() {
    // Find the prev and next buttons and remove them
    var prevButton = document.querySelector(".prev");
    var nextButton = document.querySelector(".next");
    prevButton.parentNode.removeChild(prevButton);
    nextButton.parentNode.removeChild(nextButton);
  });
  
  
})