# Resumos de Aulas

## Aulas

- [Aula 01 - Classes vs Objetos](/Curso_Udemy_Ruby/POO_ruby/01.rb)
- [Aula 02 - Classes e Métodos](/Curso_Udemy_Ruby/POO_ruby/02.rb)
- [Aula 03 - Parâmetros e Initialize ](/Curso_Udemy_Ruby/POO_ruby/03.rb)
- [Aula 04 - Self, instância e Accessors](/Curso_Udemy_Ruby/POO_ruby/04.rb)
- [Aula 05 - Classes e Herança](/Curso_Udemy_Ruby/POO_ruby/05.rb)
- [Aula 06 - Métodos de instâncias e de classes](/Curso_Udemy_Ruby/POO_ruby/06.rb)

---

## UM Resumo dos 4 _pilares_ da POO

**1->** _Abstração_
Ação de abstrair uma entidade do mundo real e transformá-la em uma classe

**2->** _Encapsulamento_
Ato de dividir um programa em diversas partes tornando-o flexível, fácil de modificar e incluir novas funcionalidades

**3->** _Herança_
Habilidade de criar Classe com características de outra existente. A herança promove o reuso e reaproveitamento de código

**4->** _Polimorfismo_
Capacidade de utilizar um método(_Comportamento_) de diferentes formas para Objetos

_Em POO chamamos as informações de **attrinutes** e os comportamentos de **metehods**_

---

## Classes vs Objetos ("Formas" vs "Objeto pronto")

[Aula 01 - Classes vs Objetos](/POO_ruby/01.rb)

-> Uma _classe_ por exemplo seria uma planta de uma casa, a casa seria o _objeto_ em si. Com a planta da casa eu posso exigir que a casa seja sempre do jeito que é a forma, no caso a planta.

-> Mas pode ser que a casa não tenha a mesma cor, ou o tipo da porta. A forma predertemina muito sobre a casa, não tudo, mas muita coisa

### Classes

-> As _classes_ são a maneira que temos de informar como queremos que nosso objeto funcione

-> Ao criarmos uma classe podemos especificar os métodos e os atributos que os objetos possuirão.

-> Os _métodos_ são as _ações_ ( **de um carro** )
EX:
-> Acelera , freia, liga o farol , buzina ...

-> Os _atributos_ são _características_ ( **de um carro** )
EX:
-> Cor cinza, possui pneus aro 13, volante azul, buzina de caminhão ...

-> **Tudo no Ruby é objeto!**
EX:
-> Método _.class_
-> O .class permiti saber quem foi o pai que gerou, tipo, a classe do objeto
-> O object_id, identificação do objeto.

-> **Qual a vantagem de tudo ser objeto no Ruby ?**  
 -> Você "ganha" automaticamente várias ações/ métodos em seus objetos.
-> Para conhecer os métodos do objeto:
EX:
-> "Luan"._TAB_ => Vai mostrar as opções de métodos para esse objeto.

## Criando Classes e Métodos

[Aula 02 - Classes e Métodos](/POO_ruby/02.rb)

-> **Lembre-se** => Uma classe instanciada é um objeto!
-> Ou seja **instanciar uma classe é criar um objeto baseado nela, com seu próprio estado e comportamento.**

-> Duas formas de instanciar uma classe
EX:

```ruby
    # Por inferência ( Ruby adivinha )
    a = [61, 92, 37] # Ruby sabe que é um ARRAY

    # Declaração explícita
    b = Array.new
    b.push(63)
```

-> **Como criar um classe ?**
-> Crie um arquivo _pessoa.rb_, por exemplo

```ruby
    # Dentro do arquivo, escreva a palavra reservada (*class*), depois o nome da classe, primeira letra maiúscula
    class Pessoa
    end
```

-> A _classe_ sempre começa com _letra maiúscula_
-> **Nomes compostos devem capitular o início de cada palavra**.
EX:

```ruby
    PessoaFisica
```

-> **Use o irb para testar**
-> **Use o** _require_realative_
EX:

```ruby
    # IRB ou PRY
    require_relative "arquivo.rb"
    p = Pessoa.new # Instanciando uma classe
```

-> **O nome do arquivo não é obrigatório ser o mesmo da classe!**

-> **Como criar métodos (ações) ?**
-> Dentro da classe, use o _def / end_
EX:

```ruby
    def falar
        "Olá, Pessoal!"
    end
```

---

## Parâmetros e Método Initialize

[Aula 03 - Parâmetros e Initialize ](/POO_ruby/03.rb)

-> **Parâmetros**
-> É a forma de passar dados para dentro do método
EX:

```ruby
    def falar(texto) # Método falar, parâmetro texto
        "Olá!, #{texto}"
    end
```

    -> Posso também indicar um valor padrão
    EX:

```ruby
    def falar(texto = "Olá, tudo bem ?")
        texto
    end
```

    -> Da para usar mais de um parâmetro
    EX:

```ruby
    def falar(texto = "Hello", texto2 = "World!")
        "#{texto} #{texto2}"
    end
```

-> **Método initialize**
-> O método `initialize` é um método especial que define o que o que _objeto_ deve fazer no momento em que a classe é instanciada.
-> Ele é _executado automaticamente_ sempre que um novo objeto é criado.
EX:

```ruby
    def initialize
        puts "Inicializando..." # o que o objeto deve fazer ao ser instanciado
    end
```

    -> Também pode usar parâmetros na inicialização
    EX:

```ruby
     def initialize(cont = 5)
        cont.times do |i|
            puts "Inicializando em #{i}"
        end
    end

```

---

## Self, Variáveis de Instância e Accessors

[Aula 04 - Self, instância e Accessors](/POO_ruby/04.rb)

**Self**
-> A grosso modo o _self_ é o próprio objeto, ou seja, o objeto instanciado
EX:

```ruby
    def meu_id
        "Meu ID é o: #{self.object_id}"
    end
```

-> Você também pode reabrir classes no Ruby e usar o _self_
EX:

```ruby
    class String
        def inverter
            self.reverse
        end
    end
```

**Variáveis de Instância**
-> Variáveis de instância são as _variáveis que existem apenas na instânia do objeto_ (**em todo o objeto**), ou seja, cada objeto possui seus próprios valores em tais variáveis

-> As variáveis de instância são preceidas de um _@_ ,

->_Todas as variáveis com este símbolo ficam disponíveis dentro da classe_
EX:

```ruby
    def initialize(nome_fornecido = "fulano")
        @nome = nome_fornecido
    end

    def imprimir_nome
        @nome
    end
```

**Accesors**
-> Os accessors servem como atalhos para declaração de atributos de uma classe
EX:

```ruby
    attr_accessor :nome
```

-> A simples declaração acima te dá um "_getter_" e um "_setter_" para nome na classe em questão
EX:

```ruby
    x = Pessoa.new
    x.nome = "Luan"
    x.nome
```

## Classes e Herança

###################### VOLTAR AULA
-> _Resentando uma classe visualmete_
-> **Notação UML**

-> Classe Pessoa representada usando _UML_ => (uma forma de desenho que da a represnetação da classe toda)
EX:

```ruby
    class Pessoa
        attr_accessor :nome, :email

        def falar(texto)
            texto
        end

        def gritar(texto)
            "#{texto}"
        end
    end
```

**Representação em Texto:**

• Atributos: `nome`, `email`

• Métodos: `falar(texto)`, `gritar(texto)`

-> **Herança entre classes**
• Pessoa
• Pessoa Fisica
• Pessoa Juridica

-> Tanto a Pessoa Fisica como a Pessoa Juridica "herdam" características e ações da "pessoa genérica". Por exemplo: Ambas possuem nome, endereço, etc

-> **Convertendo em código seria assim:**
EX:

```ruby
class Pessoa # Classe Pai
    attr_accessor :nome, :email
end

class PessoaFisica < Pessoa # Classe Filho herda de Classe Pai
    attr_accessor :cpf

    def falar(texto)
        return texto
    end
end

class PessoaJuridica < Pessoa # Classe Filho herda de Classe Pai
    attr_accessor :cnpf
    def pagar
        #####
    end
end
```

-> **Setter**: Joga os dados dentro da variável
-> **Getter**: Mostra

-> Usa-se o menor **"<"** para indicar a herança
-> No Ruby não existe herança múltipla, ou seja, não e possível herdar de várias classes ao mesmo tempo

---

## Métodos de instâncias e de classes

**Métodos de instância**
->São os métodos que só podem ser invocados a partir de um objeto, ou seja, uma classe instanciada

```ruby
class Pessoa
    attr_accessor :nome, :email

    def falar(texto)
        texto
    end
end
```

**Métodos de classe**
-> São métodos que podem ser execultados a partir da própria classe, ou seja, não é necessário instanciar um objeto
-> _Quando eu não ponho o self, eu preciso instânciar a pessoa_

```ruby
class Pessoa
    attr_accessor :nome, :email

    def falar(texto)
        texto
    end

    def self.gritar(texto)
        "#{texto}!!!"
    end
end

Pessoa.gritar("Hello")
# => Hello!!!
```

---

# Módulos

-> Módulos Ruby são similiares a classes em relação ao fato de que também armazenam uma coleção de _métodos_, _constantes_ e outras definições de _módulo e classes_

-> Entretanto, diferente das classes, você não pode criar objetos baseados em módulos nem pode criar módulos que herda desse módulo. Ao invés disso, você especifica qual funcionalidade de um módulo específico você deseja adicionar a uma classe ou a um objeto específico.
-> **A classe você instância**
-> **Um módulo não pode ser instânciado**
-> Módulo permanecem sozinhos, não há hierarquia de _módulos_ ou _herança_. Módulos são um bom lugar para _armazenar constantes em um local centralizado_.

**Principais objetivos dos módulos**
-> Primeiro eles agem como _namespace_, permitindo que você defina _métodos cujos nomes não irão colidir com aqueles definidos em outras partes de um programa_
-> Em segundo lugar, permitem que você compartilhe funcionalidade entre classes - se uma classe "mistura" (**mixes in**) um módulo (isto é, o inclui), todos os métodos de instância do módulo se tornam disponíveis como se tivessem sido definidos na classe.
