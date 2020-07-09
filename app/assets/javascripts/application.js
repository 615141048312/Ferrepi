// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

//= require jquery
//= require jquery_ujs
//= require refile
//= require jquery_nested_form

$(document).ready(function () {
  // 画像が選択された時に発火します
  $(document).on('change', '#recipe_image', function () {
    console.log("ok")
    // .file_filedからデータを取得して変数fileに代入します
    const file = this.files[0];
    // FileReaderオブジェクトを作成します
    const reader = new FileReader();
    // DataURIScheme文字列を取得します
    reader.readAsDataURL(file);
    // 読み込みが完了したら処理が実行されます
    reader.onload = function () {
      // 読み込んだファイルの内容を取得して変数imageに代入します
      const image = this.result;
      // もし既に画像がプレビューされていれば画像データのみを入れ替えます
      $('.prev-content .prev-image').attr({ src: image });
    }
  });
});
