require 'string_not_blank'

describe String do 
  describe StringNotBlank do 
    
    it "Não está vazia" do 
      expect(subject).to eq("Não sou vazio")
    end

  end
end