describe "Comparate" do 
  
  it '>' do 
    num   = 5
    num2  = 2
    expect(num).to be > num2
  end

  it '>=' do 
    num = 5
    num2 = 6

    expect(num2).to be > num
  end

  it 'be_between .inclusive' do
    expect(5).to be_between(5,7).inclusive
  end

  it 'be_between .exclusive' do 
    expect(5).to be_between(2,7).exclusive
  end

  it 'match regex' do 
    expect('fulano@com.br').to match(/..@../)
  end

  it 'start_with' do 
    expect('fulano de tal').to start_with('fulano')
    expect([1,8]).to start_with(1)
  end

  it 'end_with' do 
    expect('fulano de tal').to end_with('tal')
    expect([1,8]).to end_with(8)
  end

end