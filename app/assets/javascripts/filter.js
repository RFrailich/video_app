function show_vids(){
   jQuery(".vid").hide();
   jQuery("." + jQuery('#genre_picker option:selected').text()).show();
}