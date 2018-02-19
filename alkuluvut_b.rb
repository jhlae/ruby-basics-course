# coding: utf-8

# Ohjelma testaa annettuun numeroon asti, onko luku alkuluku.
# 

require 'prime'

puts "Monenteenko lukuun asti etsitään? " 
maara = gets.chomp!

i = 1

while(i < maara.to_i + 1)
    if Prime.prime?(i)
      puts "#{i} on alkuluku!"
    else
      puts "#{i} ei ole alkuluku."
    end    
    i = i + 1
end
