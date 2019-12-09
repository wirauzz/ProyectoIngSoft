require 'sinatra'
require './lib/auto.rb'
require './lib/terreno.rb'

@@autos = []
@@terreno = Terreno.new
@@prevResult = Auto.new

get '/' do
    erb:simulador_inicio
end

post '/num_autos' do
    for i in 0..params[:quantity].to_i() do
        @@autos << Auto.new
    end

    erb:Simulador_Entradas
end

post '/entradas' do
    @@terreno.setTamX(params['tam_x'].to_i)
    @@terreno.setTamY(params['tam_y'].to_i)
    for i in 0..@@autos.length()-1 do
        @@autos[i].setX(params[ i.to_s + '_coo_x'].to_i)
        @@autos[i].setY(params[ i.to_s + '_coo_y'].to_i)
        @@autos[i].setOrientacion(params[ i.to_s + "_ori"])
        @@autos[i].setInputMoves(params[ i.to_s + "_input_moves"])
    end
    
    #@@prevResult = @@autos.dup()
    
    erb:Vista_previa
end

get '/Resultados' do

    for i in 0..@@auto.getInputMoves.length-1 do
        if @@auto.getInputMoves[i] == "L" or @@auto.getInputMoves[i] =="R"
             @@auto.girarAuto(@@auto.getInputMoves[i])
        
        else
            if  @@auto.getInputMoves[i] == "U"
                @@auto.avanzar()
                if @@auto.getX == @@terreno.getTamX or @@auto.getY == @@terreno.getTamY 
                    @@auto.retroceder()
                end 
            else
                @@auto.retroceder()
                if @@auto.getX == @@terreno.getTamX or @@auto.getY == @@terreno.getTamY 
                    @@auto.avanzar()
                end
            end 
        end
    end
    erb:Resultados
end