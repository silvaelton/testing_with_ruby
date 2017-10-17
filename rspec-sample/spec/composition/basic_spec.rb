describe 'Ruby on Rails' do 
  it { is_expected.to start_with('Ruby').and end_with('Rails')}

  it 'Array with and' do 
    expect([1,2,3]).to include(1).and include(3)
  end

  it 'Array with or' do 
    expect([1,2,3]).to include(1).or include(3)
  end
end