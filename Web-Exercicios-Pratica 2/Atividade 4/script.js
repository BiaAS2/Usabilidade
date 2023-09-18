function calcular(){
var val1 = document.getElementById('num1');
var val2 = document.getElementById('num2');
var val3 = document.getElementById('num3');
var valor1 = parseInt(num1.value);
var valor2 = parseInt(num2.value);
var valor3 = parseInt(num3.value);

var total = (valor1 + valor2 + valor3) / 3;

var resultado = document.getElementById('result')

alert('O resultado da media dos 3 valores resulta em ' + total  )    
resultado.innerText = (total)

}
