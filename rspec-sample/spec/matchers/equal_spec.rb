describe 'Matchers de comparação' do 

  it '#equal invalid' do 
    x = "ruby"
    y = "ruby"

    expect(x).not_to equal(y)  
  end

  it "#equal valid" do 
    x = 'ruby'
    y = x
    expect(x).to equal(y)
  end

  it "#be invalid" do 
    x = 'ruby'
    y = 'ruby'

    expect(x).not_to be(y)
  end

  it "#be valid" do 
    x = "ruby"
    y = x 
    expect(x).to be(y)
  end


  it "#eq valid" do

    x = "ruby"
    y = "ruby"

    expect(x).to eq(y)
  end

  it "#eq invalid" do
    x = "ruby"
    y = "ruby1"

    expect(x).not_to eq(y) 
  end

  it "#eql valid" do 
    x, y = "ruby", "ruby"

    expect(x).to eql(y)
  end


end