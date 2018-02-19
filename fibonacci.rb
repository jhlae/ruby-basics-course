# coding: utf-8

  def fibo(num)
  if num < 2
      num
  else
    fibo(num-1) + fibo(num-2)
  end
end

toisto = 0

print "Montako kierrosta lasketaan?: "

kierrokset = gets.chomp!
kierrokset = kierrokset.to_i

while toisto < kierrokset + 1 
    if(toisto > -1)
      puts "#{toisto}: #{fibo(toisto)}"
    end
  toisto = toisto + 1
end