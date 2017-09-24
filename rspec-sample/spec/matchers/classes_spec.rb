require 'string_not_blank'

describe "Classes" do 

  it 'be_instance_of' do 
    str = StringNotBlank.new
    
    expect(10).to be_instance_of(Integer)
    expect(10).not_to be_instance_of(String)
    expect(str).not_to be_instance_of(String)
  end

  it 'be_kind_of' do 
    expect(10).to be_kind_of(Integer)
    expect(10).not_to be_kind_of(String)
  end

  it 'be_kind_of string' do 
    str = StringNotBlank.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNotBlank)
    expect(str).to be_kind_of(StringNotBlank)
  end

  it 'respond_to' do 
    # verifica se possui o método
    expect("texto").to respond_to :size
    expect("texto").to respond_to :count
  end

  it "be_a" do 
    #be_a, be_an => be_kind_of
    str = StringNotBlank.new
    expect(str).to be_a(String)
    expect(str).to be_a(StringNotBlank)
    
    expect(str).to be_an(String)
    expect(str).to be_an(StringNotBlank)

  end

  it "be_an" do 
  end
end