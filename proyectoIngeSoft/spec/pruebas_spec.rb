require './lib/auto.rb'

RSpec.describe Auto do
    def auto
        @auto||=Auto.new 
    end
    #Para agregar datos
    it 'Deberia devolver 2 cuando se envia 2' do
        auto.setX(2)
        expect(auto.getX()).to eq (2)
    end
    it 'Deberia devolver 4 cuando se envia 4' do
        auto.setY(4)
        expect(auto.getY()).to eq (4)
    end
    it 'Deberia devolver E cuando se envia E' do
        auto.setOrientacion("E")
        expect(auto.getOrientacion()).to eq ('E')
    end
    #Girar
    it 'Deberia devolver W cuando se envia N' do
        auto.setOrientacion('N')
        auto.girarAuto('L')
        expect(auto.getOrientacion()).to eq ('W')
    end
    it 'Deberia devolver S cuando se envia W' do
        auto.setOrientacion('N')
        auto.girarAuto('L')
        expect(auto.getOrientacion()).to eq ('W')
    end
    it 'Deberia devolver W cuando se envia N' do
        auto.setOrientacion('N')
        auto.girarAuto('L')
        expect(auto.getOrientacion()).to eq ('W')
    end
    it 'Deberia devolver W cuando se envia N' do
        auto.setOrientacion('N')
        auto.girarAuto('L')
        expect(auto.getOrientacion()).to eq ('W')
    end  
    it 'Deberia devolver W cuando se envia N' do
        auto.setOrientacion('N')
        auto.girarAuto('R')
        expect(auto.getOrientacion()).to eq ('E')
    end
    it 'Deberia devolver W cuando se envia N' do
        auto.setOrientacion('E')
        auto.girarAuto('R')
        expect(auto.getOrientacion()).to eq ('S')
    end
    #Avanzar 
    it 'Deberia devolver 4 cuando se envia N' do
        auto.setOrientacion('N')
        auto.setY(5)
        auto.avanzar()
        expect(auto.getY()).to eq (4)
    end
    it 'Deberia devolver 9 cuando se envia E' do
        auto.setOrientacion('E')
        auto.setX(8)
        auto.avanzar()
        expect(auto.getX()).to eq (9)
    end
    it 'Deberia devolver 6 cuando se envia W' do
        auto.setOrientacion('W')
        auto.setX(7)
        auto.avanzar()
        expect(auto.getX()).to eq (6)
    end
    #Retroceder
    it 'Deberia devolver 6 cuando se envia N' do
        auto.setOrientacion('N')
        auto.setY(5)
        auto.retroceder()
        expect(auto.getY()).to eq (6)
    end
    it 'Deberia devolver 16 cuando se envia W' do
        auto.setOrientacion('W')
        auto.setX(15)
        auto.retroceder()
        expect(auto.getX()).to eq (16)
    end
    it 'Deberia devolver 4 cuando se envia S' do
        auto.setOrientacion('S')
        auto.setY(5)
        auto.retroceder()
        expect(auto.getY()).to eq (4)
    end
    it 'Deberia devolver 4 cuando se envia E' do
        auto.setOrientacion('E')
        auto.setX(4)
        auto.retroceder()
        expect(auto.getX()).to eq (3)
    end
end