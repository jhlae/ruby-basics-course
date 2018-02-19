# coding: utf-8

require 'open-uri'
print "Anna URL-osoite: "
url = gets.chomp!
if(!url.empty?)
  file = open(url)
  contents = file.read
  puts contents
end