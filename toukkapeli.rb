# coding: utf-8

# Ohjelma on kivi-paperi-sakset-tyyppinen peli, jossa valitaan joka torakka, jalka tai ydinpommi.

pelaaja_pisteet = 0
tietokone_pisteet = 0
jatketaan = true

def pisteet(pelaaja_pisteet,tietokone_pisteet)
    puts "################################\nTilanne: pelaaja #{pelaaja_pisteet} – ohjelma #{tietokone_pisteet}\n################################"
end

while jatketaan
  puts "1: Torakka 2: Jalka 3: Ydinpommi 4: Lopeta peli"
  puts "Valitse (1-4):"
  valittu = gets.chomp!
  valittu = valittu.to_i

  if(valittu == 4) 
    jatketaan = false 
  end

  luku = rand(1..3)
  luku = luku.to_i
  
   
  if(valittu == 1 and luku == 2)
  puts "Valitsit torakan, tietokone valitsi ydinpommin."    
  puts "Voitit!"
  pelaaja_pisteet = pelaaja_pisteet + 1
  pisteet(pelaaja_pisteet,tietokone_pisteet)
  end

  if(valittu == 3 and luku < 1)
    puts "Valitsit ydinpommin, tietokone valitsi torakan."        
    puts "Tietokone voitti."
    tietokone_pisteet = tietokone_pisteet + 1
  pisteet(pelaaja_pisteet,tietokone_pisteet)
  end


  if(valittu == 1 and luku == 3)
    puts "Valitsit torakan, tietokone valitsi jalan."    
    puts "Tietokone voitti."
    tietokone_pisteet = tietokone_pisteet + 1
  pisteet(pelaaja_pisteet,tietokone_pisteet)
  end

  if(valittu == 2 and luku == 3)
    puts "Valitsit ydinpommin, tietokone valitsi jalan."    
    puts "Voitit!"
    pelaaja_pisteet = pelaaja_pisteet + 1
  pisteet(pelaaja_pisteet,tietokone_pisteet)
  end

  if(valittu == 2 and luku == 1)    
    testaus = rand(1..2)
    testaus = testaus.to_i
      if (testaus == 1) then
        puts "Valitsitte saman, tasapeli."
      else 
        puts "Valitsit ydinpommin, tietokone valitsi torakan."    
        puts "Tietokone voitti."
        tietokone_pisteet = tietokone_pisteet + 1
      end
  pisteet(pelaaja_pisteet,tietokone_pisteet)
  end

  if(valittu == 3 and luku == 1)
    puts "Valitsit jalan, tietokone valitsi torakan."    
    puts "Voitit!"
    pelaaja_pisteet = pelaaja_pisteet + 1
  pisteet(pelaaja_pisteet,tietokone_pisteet)
  end

  if(valittu == 3 and luku == 2)
    puts "Valitsitte saman, tasapeli."
  pisteet(pelaaja_pisteet,tietokone_pisteet)
  end

  if((valittu == 1 and luku == 1) or (valittu == 2 and luku == 2) or (valittu == 3 and luku == 3))
    puts "Valitsit torakan, tietokone valitsi jalan."    
    puts "Tietokone voitti."
    tietokone_pisteet = tietokone_pisteet + 1
  pisteet(pelaaja_pisteet,tietokone_pisteet)
  end

end