# coding: utf-8

# Ohjelma hakee annetun tiedoston sisällön ja tulostaa sen.
# 

class String
  def red; "\e[31m#{self}\e[0m" end
end

begin 
  puts "Anna luettavan tiedoston nimi: "
  nimi = gets
  # Poistetaan tiedostonimestä rivinvaihtomerkki
  nimi.chomp!

  # Lue tiedosto rivi riviltä
  sisus = ""
  tiedosto = File.open(nimi,"r")
  tiedosto.each {|rivi| sisus << rivi }

rescue 
  puts "VIRHE: Tiedostoa ei löytynyt.".red
retry

else
  puts sisus
  tiedosto.close
end