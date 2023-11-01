function imprimir(){
/*Possua uma função que receba o número natural informado como argumento 
e imprima na tela todos os números naturais ímpares menores ou iguais ao número recebido.*/

var numero = parseInt(document.getElementById("numero").value);
var result = document.getElementById("resultado");

resultado.textContent = "Numeros naturais ímpares menores ou iguais a " + numero + " :";
for (i = 0; i <= numero ; i++){
    if (i % 2 !== 0) {
        resultado.textContent += i + " , ";
    }

}
}

