// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"


Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import 'animate.css';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { nextBtn } from '../plugins/nextBtn';
import { prevBtn } from '../plugins/prevBtn';
// import { typedjs } from '../plugins/typed';
import { clickBtndashboard } from '../plugins/clickBtndashboard';
import { initLocationAutocomplete} from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  nextBtn();
  prevBtn();
  // typedjs();
  clickBtndashboard();
  initLocationAutocomplete();
  initMapbox();
});

import "controllers"
