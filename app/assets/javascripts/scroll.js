//ページトップまで移動する
$(function(){
  $('#scroll_to_top, .scroll_to_top__btn').click(function(){
    $('body,html').scrollTop(0);
  });
});