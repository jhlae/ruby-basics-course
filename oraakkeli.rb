# coding: utf-8

# Neljännessä tehtävässä harjoitellaan case-valinnan käyttöä, sekä luodaan arkielämää helpottava, erehtymätön, Oraakkeli-ohjelma. Ohjelma käynnistyy antamalla lyhyen selityksen itsestään: "Oraakkeli vastaa kyllä/ei-muodossa". Tämän jälkeen pyydetään käyttäjältä kysymys "Kirjoita kysymyksesi Oraakkelille:". Tämän jälkeen ohjelma arpoo luvun väliltä 0-99 ja vastaa käyttäjälle seuraavassa muodossa:
# "Kysymyksesi oli: [esitetty kysymys]", "Tähän Oraakkeli vastasi:" ja mikäli satunnaisluku oli 0-19, "Ei missään nimessä!", 20-44 "Ei varmaankaan", 45-54 "En osaa sanoa.", 55-79 "Luultavasti kyllä." ja 80-99 "Ehdottomasti kyllä".

    
puts "Oraakkeli vastaa kyllä/ei-muodossa."
puts "Kirjoita kysymyksesi Oraakkelille:"

kysymys = gets.chomp

rand = rand(0...99)

puts "Kysymyksesi oli: #{kysymys}"
puts "Tähän Oraakkeli vastasi: "

  case rand
  when 0..19
    vastaus = "Ei missään nimessä."
  when 20..44
    vastaus = "Ei varmaankaan"
  when 45..54
    vastaus = "En osaa sanoa."
  when 55..79
    vastaus = "Luultavasti kyllä."
  when 80..99
    vastaus = "Ehdottomasti kyllä."
      
  else
  end

puts vastaus