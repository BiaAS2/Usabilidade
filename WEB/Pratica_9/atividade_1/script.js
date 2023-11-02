function imprimir() {
  var numero = parseInt(document.getElementById("numero").value)
  var result = document.getElementById("resultado")

  if (isNaN(numero)) {
    alert("Nenhum valor foi inserido!")
    result.textContent = ""
    return
    }
    
  var listaNumeros = ""
  for (i = 0; i <= numero; i++) {
    if (i % 2 !== 0) {
      if (i === numero || i === numero - 1) {
        listaNumeros += i + ".";
      } else {
        listaNumeros += i + ", ";
      }
    }
  }

  result.textContent = "Numeros naturais ímpares menores ou iguais a " + numero + " : " + listaNumeros;
  verificarParOuImpar(numero)
}

function verificarParOuImpar(numero) {
  var result = document.getElementById("resultadoParImpar")
  if (numero % 2 === 0) {
    result.textContent += "\n\nO número " + numero + " é par."
  } else {
    result.textContent += "\n\nO número " + numero + " é ímpar."
  }
}
