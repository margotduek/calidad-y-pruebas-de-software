# coding: utf-8
require 'rubygems'
require 'watir'
require 'selenium-webdriver'

# Abrir navegador e ir a la página
caps = Selenium::WebDriver::Remote::Capabilities.chrome(chrome_options: {detach: true})
browser = Watir::Browser.new :chrome, desired_capabilities: caps

#browser = Watir::Browser.new 
browser.goto 'https://docs.google.com/forms/d/e/1FAIpQLScibDlJbtkFcjSXUBLmfupPkqKslmHIpjHGHdNberFVSNP6Pw/viewform?c=0&w=1'

# Rellenar area de texto
# Imprimir en consola el valor
browser.text_field(:name => 'entry.565481634').set 'Margot Duek'
puts browser.text_field(:name => 'entry.565481634').value

browser.text_field(:name => 'entry.1599836428').set 'A01021226'
puts browser.text_field(:name => 'entry.1599836428').value

q3 = browser.elements(:class_name => 'freebirdFormviewerViewItemsCheckboxChoice').map do |item|
  item
end
q3[2].click
q3[0].click
#q3[5].click

q4 = browser.elements(:class_name => 'freebirdFormviewerViewItemsRadioControl').map do |item|
  item
end
q4[3].click


# Rellenar area de texto
browser.textarea(:name => 'entry.1943388466').set 'Load testing is the process of subjecting a computer, peripheral, server, network or application to a work level approaching the limits of its specifications.'

browser.textarea(:name => 'entry.2061122182').set 'Condition coverage is also known as Predicate Coverage in which each one of the Boolean expression have been evaluated to both TRUE and FALSE.  if ((A || B) && C)
{
  << Few Statements >>
}
else
{
   << Few Statements >>
}'

browser.textarea(:name => 'entry.980720621').set 'All the possible combinations of outcomes of conditions in a decision (therefore the complete decision table) are tested at least once. Since there are only two possible outcomes of a condition (TRUE or FALSE), 2 is the basis for the number of test situations that can be created.  The maximum number of test situations (the complete decision table) depends on the amount of conditions: 2n , where N is the amount conditions.'

browser.textarea(:name => 'entry.1285916526').set 'Stress testing is the process of determining the ability of a computer, network, program or device to maintain a certain level of effectiveness under unfavorable conditions. The process can involve quantitative tests done in a lab, such as measuring the frequency of errors or system crashes. The term also refers to qualitative evaluation of factors such as availability or resistance to denial-of-service (DoS) attacks. Stress testing is often done in conjunction with the more general process of performance testing.

When conducting a stress test, an adverse environment is deliberately created and maintained. Actions involved may include:

Running several resource-intensive applications in a single computer at the same time
Attempting to hack into a computer and use it as a zombie to spread spam
Flooding a server with useless e-mail messages
Making numerous, concurrent attempts to access a single Web site
Attempting to infect a system with viruses, Trojans, spyware or other malware.
'

#browser.find_element(:xpath => "//*[contains(@data-value,'4. Maybe')]").click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/content/div/label[2]/div/div[1]/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div/content/div/label[4]/div/div[1]/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[8]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div').click

browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[2]/content/label[5]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[3]/content/label[2]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[4]/content/label[6]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[5]/content/label[5]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[6]/content/label[1]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[7]/content/label[3]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[8]/content/label[6]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[9]/content/label[2]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[10]/content/label[9]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[11]/content/label[5]/div/div[3]/div').click

browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[11]/div[2]/div[1]/div[2]').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[11]/div[2]/div[2]/div[3]').click


browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div[3]/div/label/div/div[1]/div[2]').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[4]/div/div[1]/div[3]/div').click

browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div').click


sleep(3)
browser.close
