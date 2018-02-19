# coding:utf-8

# Ohjelma testaa annettuun lukuun asti, onko luku alkuluku.
# 
 
def is_prime?
  return false if self <= 1
    2.upto(Math.sqrt(self).to_i) do |x|
      return false if self%x == 0
      end 
  true
end 

print "Monenteenko alkulukuun asti etsitään? " 
maara = gets.chomp!

number = 1
count = 1
while count < maara.to_i + 1
  j = 2
  while j <= number + 1
    break if number%j == 0
    j += 1
  end
  if j == number
    puts "#{number} on alkuluku!"
    count += 1
  else          
    puts "#{number} ei ole alkuluku."
    count += 1
  end
  number += 1
end