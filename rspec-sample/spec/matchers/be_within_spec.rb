describe 'be_within' do 
  it { expect(12.5).to be_within(0.5).of(12)}

  # 12.5
  # 12.1 12.2 12.3 12.4 12.5
  # 11.9 11.8 11.7 11.6 11.5
  # variacao de 0.5

  it { expect([12.6,11.4]).to all(be_within(0.6).of(12))}
end