# Explicação

-> No arquivo cachoro.rb

Ele herda da classe Animal. Porém essa classe não esta no arquivo.

No meu app.rb ele faz um require_relative das duas classes, e é como se todas elas estivessem no app. Por isso classe Cachorro herda de classe Animal.

Se inverter o require*relative no app:
-> \_Aqui*: ✅

```ruby
require_relative './animal.rb'
require_relative './cachorro.rb'
```

-> _Para_: ❌

```ruby
require_relative './cachorro.rb'
require_relative './animal.rb'
```

ERRO :

```bash
)>': uninitialized constant Animal (NameError)

class Cachorro < Animal
                 ^^^^^^
        from ./app.rb:2:in 'Kernel#require_relative'
        from ./app.rb:2:in '<main>'
```

-> Este erro ocorre por que ele lê da forma que se escreve uma classe Pai em um arquivo e as classes filhas abaixo do Pai.

---

## Escopo das variáveis

-> **PASTA variables**

-> O escopo defina onde a variável vai estar disponível dentro do programa

_No Ruby 4 tipos_: - Variável Local - Variável Global - Variável de Classe - Variável de Instância

### -> Variável Local\*\*:

**É declarada com a primeira letra do nome maiúscula ou sublinhada**

Pode ser acessada apenas onde foi criada.
_Exemplo_ **=>** Dentro de uma classe, ela estará disponivel apenas dentro da classe, se a definir dentro de um método, conseguirá acessá-la apenas deste módulo e assim por diante.

### -> Variável Global\*\*:

**Pode ser acessada em qualquer lugar do programa**

Seu uso é _FORTEMENTE DESENCORAJADO_ pois além de ser visível em qualquer kugar do código, também pode ser alterada em inúmeros locais ocasionando dificuldades no rastreamento de bugs.

### -> Variável de Classe

**É declarada com o prefixo @@**

Pode ser acessada em qualquer lugar da classe onde foi declarada e seu valor é compartilhado entre todas as instâncias de sua classe

### -> Variável de Instância

**Seu nomee começa com símbolo @**

Semelhante a váriavel de classe, tendo como única diferença o valor que não é compartilhado entre todas as instâncias de sua classe.
