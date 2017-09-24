require 'calculator'

describe Calculator do 

  subject(:teste) { described_class.new }

  context "#sum" do 
    
    it 'with positive numbers' do 
      result = teste.sum(5,7)
      expect(result).to eq(12)
    end

    it 'without positive numbers' do  
      result = teste.sum(5,7)
      expect(result).not_to eq(11)
    end

    it 'with negative and positive numbers' do 
      result = teste.sum(-5,7)
      expect(result).to eq(2)
    end

    it 'with negative numbers' do 
      result = teste.sum(-5,-7)
      expect(result).to eq(-12)
    end


  end 

end