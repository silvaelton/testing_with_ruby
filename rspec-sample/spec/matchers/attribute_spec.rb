require 'pessoa'

describe 'Atributos' do

  before(:all) do
    puts '>>>>>>>>>>>>>> ANTES DE TODOS OS TESTES'
  end

  after(:all) do
    puts '>>>>>>>>>>>>>> DEPOIS DE TODOS OS TESTES'
  end

  # before(:each) => Antes de cada teste
  # after(:each)  => Depois de cada teste

  around(:each) do |teste|
    puts "ANTES AROUND"

    teste.run # roda o teste

    puts "DEPOIS AROUND"
  end

  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.name = "Elton"
    expect(pessoa).to have_attributes(name: start_with("E"))
    expect(pessoa).to have_attributes(age: nil)
    expect(pessoa).to have_attributes(name: starting_with("E"), age: nil)

    #a_string_starting => starting_with
    #a_value => be
  end

  it 'have_attributes more complex' do
    pessoa = Pessoa.new
    pessoa.name = "Elton"
    pessoa.age  = 24

    expect(pessoa).to have_attributes(name: starting_with("E"), age: (be > 20))
  end

end
