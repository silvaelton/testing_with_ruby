describe "Matchers boolean" do 
  
  it "be true" do 
    expect(1.odd?).to be true
  end

  it "be false" do 
    expect(1.even?).to be false
  end

  it "be truthly" do 
    expect(1.odd?).to be_truthy
  end

  it "be falsey" do 
    expect(1.even?).to be_falsey
  end

  it "be nil" do 
    expect(nil).to be_nil
  end

  it 'be nil 2' do 
    expect(defined?(x)).to be_nil
  end

end