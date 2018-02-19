# coding: utf-8

# Ohjelma laskee annetun matkan polttoainekulut.

matka = true
polttoaineen_keskikulutus = 6

while matka
  print "Anna autolla ajetut kilometrit: "
  ajetut_kilometrit = gets.chomp!.to_f

  print "Anna polttoaineen hinta: "
  bensan_hinta = gets.chomp!

  print "Syötä auton polttoaineen keskikulutus #{ajetut_kilometrit} km pituisella matkalla: "
  polttoaineen_keskikulutus = gets.chomp!.to_f

  hinta = (bensan_hinta.to_f * polttoaineen_keskikulutus.to_f * ajetut_kilometrit.to_f / 100).round(2)
      
  print "Matka maksoi #{hinta} euroa. "
  
  print "Lasketaanko toinen matka? (k/e)? : "
  jatketaan = gets.chomp!
    if(jatketaan == "e") then matka = false end    
end