Atividade 1

------------------------------------------------------------------------------------------------------------------------------
FIGMA : https://www.figma.com/file/3UUY8Ug4NWrJTbY5o3jOaE/Untitled?type=design&node-id=0%3A1&mode=design&t=K9y5gdRIRdWNn6Nw-1
------------------------------------------------------------------------------------------------------------------------------
Em HTML, CSS e JS, escreva um algoritmo que:

1) Processe o troco em uma máquina que vende salgados, doces, sucos e refrigerantes. Oalgoritmo deve calcular o menor número de notas que deve ser retornado como troco para um pagamento efetuado. O algoritmo deve ler o valor da compra e o valor pago. Se o valor pago for menor que o valor da compra, a máquina deve apresentar uma mensagem, informando que a quantia paga é insuficiente para realizar a compra. A máquina retorna apenas notas de R$ 50,00, R$ 20,00, R$ 10,00, R$ 5,00, R$ 2,00 e R$ 1,00 como troco. OBS: algoritmo deve ser executado quantas vezes o usuário determinar.


Exemplo 1:
Valor pago: R$ 20,00
Valor da compra: R$ 23,00
A quantia paga é insuficiente para realizar a compra!


Exemplo 2:
Valor pago: R$ 100,00
Valor da compra: R$ 23,00
Troco: R$ 77,00
Notas de R$ 50,00: 1
Notas de R$ 20,00: 1
Notas de R$ 10,00: 0
Notas de R$ 5,00: 1
Notas de R$ 2,00: 1
Notas de R$ 1,00: 0

2) Receba uma quantidade indeterminada de números informados pelo usuário a partir do
teclado. O algoritmo deve apresentar a média aritmética dos números informados.

3) Receba uma quantidade indeterminada de números informados pelo usuário a partir do
teclado. O algoritmo deve apresentar o maior número informado.

4) Resolva uma equação de segundo grau, realizando consistências dos valores dos
coeficientes (“a”, “b” e “c”) e do discriminante (delta), conforme descrito abaixo.
a. Se os coeficientes “a”, “b” e “c” forem iguais a zero, apresentar a mensagem
"Igualdade confirmada: 0 = 0".
b. Se os coeficientes “a” e “b” forem iguais a zero e o coeficiente “c” for
diferente de zero, apresentar a mensagem “Coeficientes informados
incorretamente”.
c. Caso o coeficiente “a” seja igual a zero e o coeficiente “b” for diferente de
zero, deverá ser impressa a mensagem: “Esta é uma equação de primeiro
grau” e deverá ser apresentado o valor da raiz real da equação (x = -c / b).
d. Caso o coeficiente “a” seja diferente de zero:
i. Deverá ser impressa a mensagem: “Esta é uma equação de segundo
grau”.
ii. Caso o discriminante seja negativo, deverá ser impressa a mensagem:
“Esta equação não possui raízes reais”.
iii. Caso o discriminante seja zero, apresentar a mensagem “Esta equação
possui duas raízes reais iguais”. Em seguida, apresentar o valor das
raízes da equação (x = -b / (2 * a)).
iv. Caso o discriminante seja maior que zero, apresentar a mensagem
“Esta equação possui duas raízes reais diferentes”. Em seguida,
apresentar o valor das raízes da equação.
Equação do segundo grau: ax2 + bx + c = 0
Discriminante:  = b2 – 4ac

Avalia sua implementação segundo os casos de teste abaixo:

a = 0, b = 0 e c = 0 -> "Igualdade confirmada: 0 = 0"
a = 0, b = 0 e c = 8 -> “Coeficientes informados incorretamente”
a = 0, b = 2 e c = -8 -> “Esta é uma equação de primeiro grau: x = 4”
a = 10, b = -4 e c = 12 -> “Esta é uma equação de segundo grau. Esta equação não possui

raízes reais (delta < 0): delta = -464”

a = 4, b = -4 e c = 1 -> “Esta é uma equação de segundo grau. Esta equação possui duas

raízes reais iguais: x' = x'' = 0.5”

a = 1, b = 6 e c = 7 -> “Esta é uma equação de segundo grau. Esta equação possui duas

raízes reais diferentes: delta = 8, x' = -1.59, x'' = -4.41”
OBS: algoritmo deve ser executado quantas vezes o usuário determinar.
