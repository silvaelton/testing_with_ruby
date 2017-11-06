require 'pessoa'

describe 'Atributos' do
  # before(:each) do
  #  pessoa = Pessoa.new
  # end
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.name = "Elton"
    expect(pessoa).to have_attributes(name: start_with("E"))
    expect(pessoa).to have_attributes(age: nil)
    expect(pessoa).to have_attributes(name: starting_with("E"), age: nil)

    #a_string_starting => starting_with
    #a_value => be
  end

  it 'have_attributes more complex' do
    pessoa.name = "Elton"
    pessoa.age  = 24

    expect(pessoa).to have_attributes(name: starting_with("E"), age: (be > 20))
  end

end
