// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function suggestion_lb() {
	$.blockUI({ message: $('#suggestion_lb') });
  //$.blockUI.defaults.css = {};
  $('.blockOverlay').attr('title','Click to unblock').click($.unblockUI);
	
	
}
