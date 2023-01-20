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
  console.log('画面が更新されました')
  // ボタン要素を取得
  const icon = document.getElementById('user-icon');
  // 表示・非表示を切り替える要素を取得
  const navi = document.getElementById('navigasion-box');
  
  // 初期状態では非表示
  if(navi) {
    navi.style.display = 'none';
  }

  // styleのdisplayを変更するための関数
  const changeElement = (navi) => {
    console.log("ボタンが押されました")
    if(navi.style.display == ''){
      console.log("非表示にしました")
      navi.style.display = 'none';
    } else {
      console.log("表示しました")
      navi.style.display = '';
    }
  }

  if(icon){
    icon.addEventListener("click", () => changeElement(navi));
  }

};
