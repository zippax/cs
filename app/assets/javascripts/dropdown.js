$(function(){
  $("ul.dropdown .drop").hover(function(){
      $(this).addClass("hover");
      $('ul:first',this).css('visibility', 'visible');
      $('ul:first',this).css('animation', 'fadeIn .5s ease-in 1 forwards');
  }, function(){
      $(this).removeClass("hover");
      $('ul:first',this).css('visibility', 'hidden');
      $('ul:first',this).css('animation', 'fadeOut .5s ease-in 1 forwards');
  });
});
