$counter1 = 0
$counter2 = 0

describe 'let' do
  ordem_de_invocacao = []

  # Disparado quando e invocado a primeira vez
  let(:count) do
    $counter1 += 1
  end

  # Disparado antes de cada teste
  let!(:words) do
    ordem_de_invocacao << :let!
    $counter2 += 1
  end

  it 'chama o método helper antes do teste' do
    ordem_de_invocacao << :exemplo
    expect(ordem_de_invocacao).to eq([:let!, :exemplo])
    expect(words).to eq(1)
  end

  it 'Testando let!' do
    expect(words).to eq(2)
  end

  it 'memoria o valor' do
    expect(count).to eq(1) # Inicia let e faz cache de $counter1
    expect(count).to eq(1) # Nao inicia mais $counter1, chama o cache
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2) # Chama count novamente e soma + 1 em $counter1
  end
end
