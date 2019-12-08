require 'auto.rb'
require 'terreno.rb'

class Simulacion

   

    def initialize(numAutos)
        @autosArr =  Array.new(numAutos) { |i| Auto.new }
        @terreno = Terreno.new
    end

end