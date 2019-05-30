$(function() {

  $('.editbtn').on('click', function () {
    $('.edit-confirm')
      .dialog({
        title: 'ツイートを編集する'
      })
      .html('<input type="text" class="edit__tweet colos="70" row="5">')
      .dialog('open');
  });

  $(function(){
    $('.edit-confirm').dialog({
      autoOpen: false,
      //autoOpen: true,
      width: 'auto',// 600,
      height: 'auto',//290,
      minHeight: 230,
      minWidth: 350,
      title: 'ツイートを編集する',
      buttons:{
        OK: function(){
          $(this).dialog('close');
        },
        Cancel: function(){
          $(this).dialog('close');
        },
      },
    });
  });


});