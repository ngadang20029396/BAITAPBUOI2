require 'webdrivers'
driver = Selenium::WebDriver.for :chrome

begin
driver.get 'https://www.google.com/'
driver.manage.window.maximize
puts driver.manage.window.size
sleep 3
element = driver.find_element(name: 'q')
element.click
sleep 4
element.send_keys "ITMS Coaching"  
slepp 5
puts driver.title

ensure
driver.quit

end