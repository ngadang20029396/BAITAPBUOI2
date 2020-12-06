require 'webdrivers'
driver = Selenium::WebDriver.for :chrome

begin
driver.get 'https://itmscoaching.herokuapp.com/form'
driver.manage.window.maximize
puts driver.manage.window.size
sleep 3
element = driver.find_element(id: 'first-name')
element.click
element.send_keys "ITMS"  
element = driver.find_element(id: 'last-name')
element.click
element.send_keys "Huấn luyện viên" 
element = driver.find_element(id: 'job-title')
element.click
element.send_keys "QA"
element = driver.find_element(id: 'radio-button-2')
element.click
element = driver.find_element(id: 'checkbox-1')
element.click
options = driver.find_element(id: 'select-menu')
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:text, "2-4")
submit = driver.find_element(xpath: "//a[contains(text(),'Submit')]")
submit.click
element = driver.find_element(xpath: "//input[@id='datepicker']")
element.click
element.send_keys "10/27/2025"

sleep 5
driver.title

ensure
driver.quit

end
