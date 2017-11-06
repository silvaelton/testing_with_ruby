describe Array.new([1,2,3]),  "Array test" do

  before(:each) do
    puts '>>>>>>> Antes de cada teste unidade'
  end

  after(:each) do
    puts '>>>>>>> Depois de cada teste unidade'
  end

  it '#include' do
    expect(subject).to include(2,1)
  end

  it '#match_array' do
    expect(subject).not_to match_array([1,2])
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1,2,3)
  end
end
