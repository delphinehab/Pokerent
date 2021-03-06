// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { cursorDate } from '../components/cursor_date';
import { searchAuto } from '../components/search_auto_complete';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  cursorDate();
  searchAuto();
});

ScrollReveal().reveal('.style0', { delay: 300 });
ScrollReveal().reveal('.style1', { delay: 400 });
ScrollReveal().reveal('.style2', { delay: 500 });
ScrollReveal().reveal('.style3', { delay: 600 });
ScrollReveal().reveal('.style4', { delay: 700 });
ScrollReveal().reveal('.style5', { delay: 800 });
ScrollReveal().reveal('.style6', { delay: 900 });
ScrollReveal().reveal('.style7', { delay: 1000 });
ScrollReveal().reveal('.style8', { delay: 1100 });
ScrollReveal().reveal('.style9', { delay: 1200 });
