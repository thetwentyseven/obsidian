jQuery(document).ready(function($) {
  $(document).ready(function(){


    $('.owl-carousel').owlCarousel({
      loop:false,
      margin:10,
      nav:false,
      responsive:{
          0:{
              items:1
          },
          600:{
              items:2
          },
          1000:{
              items:3
          }
      }
    })


    $('.owl-carousel-dj').owlCarousel({
      loop:false,
      margin:50,
      nav:false,
      responsive:{
          0:{
              items:1
          },
          600:{
              items:2
          },
          1000:{
              items:3
          }
      }
    })


  }); //$(document)
}); //jQuery(document)
