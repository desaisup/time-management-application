// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


 // $(document).ready (function (){
 	$(document).ready(function() {
   

 $.datepicker.setDefaults({
  showOn: "both",
  buttonImageOnly: true,
  buttonImage: "/assets/calendar.gif",
  buttonText: "Calendar"
  

 });
 $(function () {

 $("#project_from_date").datepicker({ dateFormat: "yy-mm-dd" });
$("#project_to_date").datepicker({ dateFormat: "yy-mm-dd" });
$("#create_project_task_date").datepicker({ dateFormat: "yy-mm-dd" });
$("#assign_project_from_date").datepicker({ dateFormat: "yy-mm-dd" });
$("#assign_project_to_date").datepicker({ dateFormat: "yy-mm-dd" });
$("#task_task_date").datepicker({ dateFormat: "yy-mm-dd" });

 });
 $('#task_task_time').timepicker({ 'timeFormat': 'H:i' });

});
