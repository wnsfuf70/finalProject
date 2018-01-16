/**
 * 
 */


$(document).ready(function () {
  var navListItems = $('div.setup-panel div a'),
          allWells = $('.setup-content'),
          allNextBtn = $('.nextBtn');

  allWells.hide();

  navListItems.click(function (e) {
      e.preventDefault();
      var $target = $($(this).attr('href')),
              $item = $(this);

      if (!$item.hasClass('disabled')) {
          navListItems.removeClass('btn-primaryy').addClass('btn-defaultt');
          $item.addClass('btn-primaryy');
          allWells.hide();
          $target.show();
          $target.find('input:eq(0)').focus();
      }
  });

  allNextBtn.click(function(){
      var curStep = $(this).closest(".setup-content"),
          curStepBtn = curStep.attr("id"),
          nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
          curInputs = curStep.find("input[type='text'],input[type='url']"),
          isValid = true;

      $(".form-group").removeClass("has-error");
      for(var i=0; i<curInputs.length; i++){
          if (!curInputs[i].validity.valid){
              isValid = false;
              $(curInputs[i]).closest(".form-group").addClass("has-error");
          }
      }

      if (isValid)
          nextStepWizard.removeAttr('disabled').trigger('click');
  });

  $('div.setup-panel div a.btn-primaryy').trigger('click');
  
  $('#inter').click(function(){
	  $('#inter').css("background-image", "url('/project/resources/images/story/train_selected.svg')");
	  $('#abroad').css("background-image", "url('/project/resources/images/story/airplane_nonselected.svg')");
	  $("input[type=hidden][name=p_frgn_yn]").val("N");
  });
  
  $('#abroad').click(function(){
	  $('#inter').css("background-image", "url('/project/resources/images/story/train_nonselected.svg')");
	  $('#abroad').css("background-image", "url('/project/resources/images/story/airplane_selected.svg')");
	  $("input[type=hidden][name=p_frgn_yn]").val("Y");
  });
  
});