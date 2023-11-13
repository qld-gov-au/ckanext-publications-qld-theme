jQuery(document).ready(function () {

  // Hide resource size element on loading of a resource edit form if the resource file was uploaded
  if (jQuery('#resource-url-upload').prop('checked') === true) {
    jQuery('#field-size').parent().parent().hide();
  }
  // Show field-size element on loading of a resource edit form if the resource file was a url link
  else {
    jQuery('#field-size').parent().parent().show();
  }

  // Hide the resource element if a file was selected to upload
  jQuery('#field-resource-upload').change(function () {
    jQuery('#field-size').parent().parent().fadeOut();
  });

  // Show the resource element if a url link was entered
  jQuery('#field-resource-url').change(function () {
    jQuery('#field-size').parent().parent().fadeIn();
  });

  // Insert field is required asterisk for labels 
  jQuery('.control-label[for="field-resource-upload"]').parent().prepend('<span title="This field is required" class="control-required">*</span> ')
  jQuery('.control-label[for="field-resource-url"]').parent().prepend('<span title="This field is required" class="control-required">*</span> ')

});
