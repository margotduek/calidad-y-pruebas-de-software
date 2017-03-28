# coding: utf-8
require 'rubygems'
require 'watir'

# Abrir navegador e ir a la página
browser = Watir::Browser.new 
browser.goto 'http://bit.ly/watir-example'

# Rellenar area de texto
# Imprimir en consola el valor
browser.text_field(:name => 'entry.1000000').set 'texot'

puts browser.text_field(:name => 'entry.1000000').value

# Rellenar area de texto
browser.textarea(:name => 'entry.1000001').set 'Este es un texto mucho mas grande y mucho mas extenso que debe de escribir multiples lineas'
browser.textarea(:css => 'textarea[name="entry.1000001"]').clear
browser.textarea(:xpath => '//textarea[@name="entry.1000001"]').set "Hola"

browser.radio(:id => /group_1000002/).click

browser.checkbox(:id => /group_1000003_1/).click
browser.checkbox(:id => /group_1000003_3/).click

browser.select_list(:id => 'entry_1000004').select_value("Chrome")

item1 = browser.radios(:id => /group_1000006/).map do |item|
  item.value
end

valores = ['1','2','3','4','5']

if valores == item1
  puts "Lo logró"
end

browser.radio(:value => '2').click

browser.radio(:id => /group_1000006_3/).click
browser.radio(:id => /group_1000007_5/).click

sleep(3)

#browser.button(:id => 'ss-submit').click

#browser.close
