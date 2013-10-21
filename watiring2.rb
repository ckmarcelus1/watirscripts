require 'watir'
b = Watir::Browser.start "www.w3schools.com/js/tryit.asp?filename=tryjs_alert"
b.maximize
b.frame(:name, "view").execute_script("window.alert = function() {}")
b.javascript_dialog.button('OK').click