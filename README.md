# Linguagem ketScript

## Aluna: Kelsiane Lima
#### Extensão do arquivo: arquivo.ket

## Linguagem feita na disciplina dde compiladores, ketScript é uma linguagem baseada na linguagem C.

### Indicadores de Início e Fim do Programa:
* Início (ket_inicio)
* Fim (ket_fim)


### Declaração de Variáveis:
<p color="red"> 1 - As variáveis tem que começar com letra(s)<br>
2 - As variáveis podem ser compostas só de letras e números <br>
3 - Por default a variável vem zerada assim que declarada <br>
</p>

* float, string e int <br>  
 
 float n1 ou float nnA0 <br>
 string n1 ou string nnA0 <br>
 int n1 ou int nnA0 <br>

### Operadores Matemáticos:
* (+) Soma
a + b
*(-) Subtração
a - b
* (*) Multiplicação
a * b
* (/) Divisão
 a / b
* (^) Exponenciação
 a ^ b
* ($) Radiciação
$(a)

### Operações de Leitura:
* Leitura String(ketins)
ketins>>n

* Leitura Int(ketini)
ketini>>n

* Leitura Float(ketinf)
ketinf>>n


### Operações de Escrita:
* Escrita Int(ketouti)
ketouti<<n

* Escrita Float(ketoutf)
ketoutf<<n

* Escrita String(ketouts)
ketouts<<n


### Comentários: 

* #Um comentário

### Laço de Repetição:
```code
while(condição){
	código
}

```
### Estrutura Condicionais:
```code
 if(condição){
	código
}else{
	código
}

```
