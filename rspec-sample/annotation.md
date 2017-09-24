
Premissas

- testes devem ser confiáveis
- testes devem ser fáceis de escrever
- testes devem ser fáceis de enter hoje e no futuro
- não estamos focados em velocidade


Teste padão do xUnit (4 fases)

xUnit, Junit (Kent Beck ?)

1. Setup: Quando você coloca o SUT(system under test, o objeto sendo testado) no estado necessário para o teste;

2. Exercise: Quando você interage com o que esta sendo testado;

3. Verify: Quando você verifica o comportamento.

4. Teardown: Quando você coloca o sistema no estado em que ele estava antes do ser executado.

--

BDD - Dan Nort

- BDD é uma abordagem de software
- Teste -> Comportamento
- Jbehave -> Java
- Cucumber -> Ruby

--

BetterSpecs

--
 
rspec -e 'with positive numbers'
rspec folder/folder/_spec.rb:15 <- Line

--

subject(:alias) { described_class.new }

def subject(alias, &block)
  alias = block
  yield alias
end

--

xit 'with numbers'

--

Matchers

equal => "Igualdade de objeto"
be => "Igualdade de objeto, friendly method, igual a equal"
eq, eql => "Igualdade de valor"

exemplos

be(true)
be(false)

be_truthy  => be true
be_falsey  => be false

be_instance_of => Igualdade de instancia
be_kind_of => Igualdade de intancia em herança

be_a, be_an => be_kind_of => Melhor conotação