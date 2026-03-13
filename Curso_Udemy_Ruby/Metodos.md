📦 Métodos de Array (Lista)
🔹 Manipulação de elementos

push
estado.push('Minas Gerais')
Adiciona um ou mais elementos no final do array.

insert
estado.insert(0, 'Rio de Janeiro')
Insere elementos em uma posição específica.

🔹 Acesso por índice

[]
estado[3]
Retorna o elemento na posição indicada.

[inicio..fim]
estado[1..2]
Retorna um intervalo de elementos.

[-1]
estado[-1]
Retorna o último elemento.

[-2]
estado[-2]
Retorna o penúltimo elemento.

first
estado.first
Retorna o primeiro elemento do array.

last
estado.last
Retorna o último elemento do array.

🔹 Verificações e contagem

count
estado.count
Retorna quantos elementos existem no array.

empty?
estado.empty?
Verifica se o array está vazio.

include?
estado.include?('São Paulo')
Verifica se um elemento existe no array.

🔹 Remoção de elementos

delete_at
estado.delete_at(1)
Remove o elemento pela posição (índice).

pop
estado.pop
Remove o último elemento do array.

shift
estado.shift
Remove o primeiro elemento do array.

🔢 Funcionamento dos Índices
Índices positivos

[0] → primeiro elemento
[1] → segundo elemento
[2] → terceiro elemento

Índices negativos

[-1] → último elemento
[-2] → penúltimo elemento
[-3] → antepenúltimo elemento

📌 Resumo Rápido

Adicionar → push, insert
Consultar → [], first, last
Verificar → include?, empty?, count
Remover → delete_at, pop, shift

---

Pesquise mais gems para testar
instalar gem bundler
bundler => Agrega várias gems em um arquivo e intala assim que é chamado!
