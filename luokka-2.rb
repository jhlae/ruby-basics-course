# coding: utf-8

class Ika
    
def initialize(nimi)
   @nimi = nimi; 
end

=begin
def tulostaNimi 
return @nimi
end
    
def asetaNimi(toinennimi)
   @nimi = toinennimi
end
    

henkilo = Ika.new("Joona")
puts henkilo.tulostaNimi
    
henkilo.asetaNimi("Seppo")
puts henkilo.tulostaNimi
=end
    
attr_accessor :nimi
    
henkilo = Ika.new("Joona")
puts henkilo.nimi
henkilo.nimi = "Sven"
puts henkilo.nimi   
    
end