// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

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

// document.addEventListener("turbo:load", function() {
//   initialize();
//   $(document).ready(function () {
//     var trigger = $('.hamburger'),
//         overlay = $('.overlay'),
//        isClosed = false;
  
//       trigger.click(function () {
//         hamburger_cross();      
//       });
  
//       function hamburger_cross() {
  
//         if (isClosed == true) {          
//           overlay.hide();
//           trigger.removeClass('is-open');
//           trigger.addClass('is-closed');
//           isClosed = false;
//         } else {   
//           overlay.show();
//           trigger.removeClass('is-closed');
//           trigger.addClass('is-open');
//           isClosed = true;
//         }
//     }
    
//     $('[data-toggle="offcanvas"]').click(function () {
//           $('#wrapper').toggleClass('toggled');
//     });  
//   });
// })

// Collapsible navbar

const collapsibles = document.querySelectorAll(".collapsible");
collapsibles.forEach((item) => 
  item.addEventListener("click", function() {
    this.classList.toggle("collapsible__expanded")
  })
)
