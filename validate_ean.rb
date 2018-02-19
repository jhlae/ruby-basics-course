# coding: utf-8
# 
# 28.7.2015

def validate_ean(c)
  i = 1
  sum = 0
  j = 0
  x = 0
  if(c.length == 13)
    while(i < c.length + 1) 
      if((i % 2) == 0)  
      sum = sum + c[x].to_i * 3
      else 
      sum = sum + c[x].to_i * 1
      end
      i = i+1
      x = x+1
    end
      if(sum % 10 == 0) 
        return true
      else 
        return false
      end
  else 
    return false
  end 
end

puts validate_ean("9783815820865")
puts validate_ean("9783815820864")
puts validate_ean("9783827317115")