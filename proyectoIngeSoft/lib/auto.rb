class Auto
    
    def initialize()
        @coo_x = 0
        @coo_y = 0

        @ori = ""
        
        @move = ""
        @input_moves = ""
    end

    /Setter de las variables /
    def setX(x)
        @coo_x = x
    end 

    def setY(y)
        @coo_y = y
    end

    def setOrientacion(ori)
        @ori = ori
    end

    def setInputMoves(input_moves)
        @input_moves = input_moves
    end

    /getter de las variables/
    def getX()
        return @coo_x
    end

    def getY()
        return @coo_y
    end

    def getOrientacion()
        return @ori
    end 

    def getInputMoves()
        return @input_moves
    end  
    
    /Funciones necesarias/
    def girarAuto(direccion)
        if direccion == 'L'
            case @ori
                when 'N'
                    @ori = 'W'
                when 'S'
                    @ori = 'E'
                when 'E'
                    @ori = 'N'
                when 'W'
                    @ori = 'S'
            end
        else direccion == 'R'
            case @ori
                when 'N'
                    @ori = 'E'
                when 'S'
                    @ori = 'W'
                when 'E'
                    @ori = 'S'
                when 'W'
                    @ori = 'N'
            end
        end
    end 

    def avanzar()
        case @ori
            when 'N'
                @coo_y = @coo_y - 1
            when 'S'
                @coo_y = @coo_y + 1
            when 'E'
                @coo_x = @coo_x + 1 
            when 'W'
                @coo_x = @coo_x - 1
        end   
    end 
    
    def retroceder()
        case @ori
            when 'N'
                @coo_y += 1
            when 'S'
                @coo_y -= 1
            when 'E'
                @coo_x -= 1
            when 'W'
                @coo_x += 1
        end
    end

end

        