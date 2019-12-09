require 'sinatra'
require './lib/auto.rb'
require './lib/terreno.rb'

@@autos = []
@@terreno = Terreno.new
@@prevResults = []

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
        @@prevResults[i] = @@autos[i].dup()
    end    
    redirect to('/Resultados')
end

get '/Resultados' do

    for i in 0..@@autos.length()-1 do
        for j in 0..@@autos[i].getInputMoves.length-1 do
            if @@autos[i].getInputMoves[j] == "L" or @@autos[i].getInputMoves[j] =="R"
                 @@autos[i].girarAuto(@@autos[i].getInputMoves[i])
            
            else
                if  @@autos[i].getInputMoves[j] == "U"
                    @@autos[i].avanzar()
                    if @@autos[i].getX == @@terreno.getTamX or @@autos[i].getY == @@terreno.getTamY 
                        @@autos[i].retroceder()
                    end 
                else
                    @@autos[i].retroceder()
                    if @@autos[i].getX == @@terreno.getTamX or @@autos[i].getY == @@terreno.getTamY 
                        @@autos[i].avanzar()
                    end
                end 
            end
        end
    end

    
    erb:Resultados
end