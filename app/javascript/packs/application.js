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

window.onload = function() {
  // ボタン要素を取得
  const icon = document.getElementById('user-icon');
  // 表示・非表示を切り替える要素を取得
  const navi = document.getElementById('navigasion-box');
  
  // 初期状態では非表示
  navi.style.display = 'none';

  // styleのdisplayを変更するための関数
  const changeElement = (navi) => {
    console.log("1")
    if(navi.style.display == ''){
      console.log("2")
      navi.style.display = 'none';
    } else {
      console.log("3")
      navi.style.display = '';
    }
  }

  icon.addEventListener("click", () => changeElement(navi));

};
