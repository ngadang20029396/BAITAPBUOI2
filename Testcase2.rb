require 'webdrivers'
driver = Selenium::WebDriver.for :chrome

begin
driver.get 'https://www.google.com/'
driver.manage.window.minimize
puts driver.manage.window.size
sleep 10

ensure
driver.quit

end