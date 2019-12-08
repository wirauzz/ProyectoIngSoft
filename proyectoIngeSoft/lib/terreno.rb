class Terreno
    
    def initialize()
        @tam_x = 0
        @tam_y = 0
    end

    /Setter de las variables /
    def setTamX(x)
        @tam_x = x
    end 

    def setTamY(y)
        @tam_y = y
    end

    /getter de las variables/
    def getTamX()
        return @tam_x
    end

    def getTamY()
        return @tam_y
    end  
end

        