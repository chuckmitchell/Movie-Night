// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function suggestion_lb() {
	$J.blockUI({ message: $J('#suggestion_lb'),
              css: { top: '10%', width: '40%', color: '#fff',background: '#000', cursor: 'default'}
              });
  //$.blockUI.defaults.css.cursor = 'pointer';
  $J.blockUI.defaults.overlayCSS = {}; 
  $J('.blockOverlay').attr('title','Click to close').click($J.unblockUI);
	
	
}

function unBlock() {
  $J.unblockUI();
}
