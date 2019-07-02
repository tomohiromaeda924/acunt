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

//= require_tree .
//= require jquery
//= require jquery_ujs

$(function() {
    
      
  
});
window.onload = function(){
  
  $("#hoge").css("color","red");

//-------------------topへ戻るボタンの表示、非表示-----------------
  window.onscroll = function()//スクロールされるたびにfunctionが実行されるのですか？？？？？？？？？？？？？？
{
    var scrollTop =
        document.documentElement.scrollTop || // IE、Firefox、Opera
        document.body.scrollTop;              // Chrome、Safari
    if(scrollTop > 10){
      document.getElementById('js-button').style.display = "block";
    }else{
      document.getElementById('js-button').style.display = "none";
    }
}
  　　　

//-------------------topへ戻る-----------------


  let target = document.getElementById('js-button');//html<button>のid取得
  target.addEventListener('click', function() {
  window.scrollTo(0,0);
  });

}
