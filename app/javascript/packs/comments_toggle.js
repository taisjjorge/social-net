//= require jquery
import $ from 'jquery';

document.addEventListener("turbolinks:load", function () {
  
  $('.comments-toggle').onclick(function () {
    $(this).closest(".card").next(".comments-list").slideToggle();
    // $(this).closest(".card").next(".comments-list").toggle()
  })
})
