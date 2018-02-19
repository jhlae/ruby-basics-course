# coding: utf-8

class Laatikko 
    
  def initialize(sisus = nil)  
    @sisus = sisus
  end    

# Aksessori, luo asettaja- ja palautusmetodit
attr_accessor :sisus 
    
def nollaa
  @sisus = ""
end
   
def suuri?
  @sisus.length > 25 ? true : false  
end
    
    
Varasto = Laatikko.new()
Varasto.sisus = "Kolmivaihekilowattituntimittari"
tulos = Varasto.suuri?
puts "Kokotestin tulos oli: #{tulos}."
Varasto.nollaa
tulos = Varasto.suuri?
puts "Kokotestin tulos oli: #{tulos}."
    
end    