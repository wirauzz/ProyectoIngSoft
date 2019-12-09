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
    for i in 0..params[:quantity].to_i()-1 do
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
    @@prevResult = @@autos[0].dup()
    redirect to('/Resultados')
end

get '/Resultados' do

    for i in 0..@@autos[0].getInputMoves.length-1 do
        if @@autos[0].getInputMoves[i] == "L" or @@autos[0].getInputMoves[i] =="R"
             @@autos[0].girarAuto(@@autos[0].getInputMoves[i])
        
        else
            if  @@autos[0].getInputMoves[i] == "U"
                @@autos[0].avanzar()
                if @@autos[0].getX == @@terreno.getTamX or @@autos[0].getY == @@terreno.getTamY 
                    @@autos[0].retroceder()
                end 
            else
                @@autos[0].retroceder()
                if @@autos[0].getX == @@terreno.getTamX or @@autos[0].getY == @@terreno.getTamY 
                    @@autos[0].avanzar()
                end
            end 
        end
    end
    erb:Resultados
end