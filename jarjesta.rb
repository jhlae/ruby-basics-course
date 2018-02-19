# coding: utf-8

# Ohjelma hakee riveittäin yksittäiset sanat, poistaa duplikaatit ja järjestää sanat aakkosjärjestykseen.

# Taulukko
kaikki_sanat = Array.new

tiedosto = File.open("tiedostot/sanat.txt","r+")
tiedosto.each {|rivi| 
  kaikki_sanat.push(rivi)
}
tiedosto.close

kaikki_sanat = kaikki_sanat.uniq
kaikki_sanat = kaikki_sanat.sort_by{|word| word.downcase}

tiedosto = File.open("tiedostot/sanat-2.txt","w+")
i = 0

while i < kaikki_sanat.length 
  tiedosto.puts(kaikki_sanat[i])
  i = i + 1
end

tiedosto.close