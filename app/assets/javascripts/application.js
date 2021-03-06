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


//= require jquery
//= require jquery_ujs
//= require jquery.min
//= require jquery.ui.custom
//= require jquery.flot.min
//= require jquery.flot.resize.min
//= require jquery.peity.min
//= require jquery.gritter.min
//= require jquery.validate
//= require jquery.wizard
//= require jquery.uniform
//= require jquery.dataTables.min
//= require bootstrap.min
//= require bootstrap
//= require bootstrap-wysihtml5
//= require bootstrap-colorpicker
//= require activestorage
//= require jquery.easy-pie-chart
//= require excanvas.min
//= require fullcalendar.min
//= require matrix
//= require matrix.interface
//= require matrix.chat
//= require matrix.form_validation
//= require select2.min
//= require matrix.popover
//= require matrix.tables
//= require matrix.calendar
//= require moment
//= require fullcalendar
//= require fullcalendar/gcal
//= require_tree .


document.getElementById('ajaxcall').addEventListener('ajax:success', function(e) {
    console.log('Call exectued to render code');
});