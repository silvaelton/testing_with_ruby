describe (1..5),'Rangers' do 
  it '#cover' do 
    expect(subject).to cover(2,5)
    expect(subject).not_to cover(6,0)
  end

  it 'inline subject' do 
    is_expected.to cover(2,5)
  end
end