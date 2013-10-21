require 'rubygems'
require 'watir'
require 'minitest/unit'
require 'watir-webdriver'

class Magento_GuestAddToCart < MiniTest::Unit::TestCase
    def test_functionality
        browser = Watir::Browser.new :chrome
        browser.goto("http://www.containerstore.com/locations/index.htm")
        browser.link(:class => "monetize_lightbox_close_0").click
        browser.link(:href, "http://www.containerstore.com/locations/showStore.htm?store=GAL").click
        browser.text_field(:id, "zipCode").set("11225")
        browser.button(:title, "searchbutton").click
        browser.button(:title, "58th & Lexington").click
       
    end
end