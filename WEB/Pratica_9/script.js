function imprimir() {
    var numero = parseInt(document.getElementById("numero").value);
    var result = document.getElementById("resultado");

    
    if (isNaN(numero)) {
        alert("Nenhum valor foi inserido!");
        result.textContent = "";
        return;
    }

    result.textContent = "Numeros naturais ímpares menores ou iguais a " + numero + " : ";
    for (i = 0; i <= numero; i++) {
        if (i % 2 !== 0) {
            result.textContent += i + " ";
        }
    }

    verificarParOuImpar(numero);
}

function verificarParOuImpar(numero) {
    var result = document.getElementById("resultado");
    if (numero % 2 === 0) {
        result.textContent += "\n\nO número " + numero + " é par.";
    } else {
        result.textContent += "\n\nO número " + numero + " é ímpar.";
    }
}
