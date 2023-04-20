// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery
//= require slick



function initializeSlider() {
  $('.slider:not(.slick-initialized)').slick({
    autoplay: true,
    autoplaySpeed: 3000
  });
}

function initialize() {
  initializeSlider();
}

document.addEventListener("turbo:load", function() {
  initialize()

  $(document).ready(function() {
    // Find the prev and next buttons and remove them
    $('.prev, .next').remove();
  });
  
})