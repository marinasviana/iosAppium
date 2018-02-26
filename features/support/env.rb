require 'appium_lib'
require 'pry'
=begin
def caps
{ caps: {
    platformName: "iOS",
    platformVersion: "11.2",
    deviceName:  "iPhone 7",
    app: "/Users/m.siqueira.viana/Documents/TesteAppium/Appium/build/ipa/WebViewApp.app"
}}
=end
caps = Appium.load_appium_txt file: File.expand_path('./../../../appium.txt', __FILE__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object