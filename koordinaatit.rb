# coding: utf-8

# Ohjelma kysyy x- ja y-koordinaatit väliltä 0–9 ja palauttaa niiden perusteella sijainnin.  


tulos = false

def arvoX
  puts "Valitse x-akselin arvo väliltä 0-9: "
  arvoX = gets.chomp
   if(arvoX.empty?)
    arvoX = -1
  end
    arvoX = arvoX.to_i
end

def arvoY
  puts "Valitse y-akselin arvo väliltä 0-9: "
  arvoY = gets.chomp
  if(arvoY.empty?)
    arvoY = -1
  end
    arvoY = arvoY.to_i
end

def main
  x = arvoX;
  y = arvoY;

  if(x > 9 || y > 9 || y == "a" || x == 100)
      puts "Virheellinen arvo"
      main
  else
      if((x < 5 and y < 5) and (x >= 0 and y >= 0)) then
        tulos = "Olet vasemmassa alakulmassa. \n_____\n|o|o|\n|x|o|\n-----"
      elsif(x < 5 and y >= 5) then
        tulos = "Olet vasemmassa yläkulmassa. \n_____\n|x|o|\n|o|o|\n-----"
      elsif(x >= 5 and y < 5) then
        tulos = "Olet oikeassa alakulmassa. \n_____\n|o|o|\n|o|x|\n-----"
      elsif(x >= 5 and y >= 5) then
        tulos = "Olet oikeassa yläkulmassa. \n_____\n|o|x|\n|o|o|\n-----"
      elsif(x < 0 || y < 0) then
        puts "Annoit tyhjän tai negatiivisen arvon."
        main
      else 
      end 
    puts tulos
  end
end

if !tulos
  main
end