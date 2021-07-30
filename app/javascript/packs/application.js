// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require materialize-css/dist/js/materialize

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "./custom"
import "jquery" 
import M from 'materialize-css/dist/js/materialize'
import 'materialize-css'

console.log(M.sidenav)

Rails.start()
Turbolinks.start()
ActiveStorage.start()


document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.sidenav');
  var instances = M.Sidenav.init(elems, {});
});