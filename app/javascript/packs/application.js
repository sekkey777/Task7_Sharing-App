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

// function settingButton(el){
//   console.log(el.style.display)
//   if (el.style.display=='') {
//     el.style.display='none';
//   } else {
//     el.style.display='';
//   }
// }

// document.addEventListener('DOMContentLoaded', () => {
//   const button = document.querySelector('.setting-button');
//   const navigation = document.querySelector('.navigasion-box');
//   navigation.style.display = 'none';
//   button.addEventListener("click", () => { settingButton(navigation) })
// })