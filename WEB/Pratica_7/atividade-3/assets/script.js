function calcular() {
  var inputNumber = parseFloat(document.getElementById('inputNumber').value);
  var resultadoElement = document.getElementById('resultado');

  if (isNaN(inputNumber)) {
    resultadoElement.innerText = "Por favor, insira um número válido.";
    resultadoElement.style.color = "#e74c3c"; // Cor vermelha para indicar erro
    return;
  }

  var resultado = calcularFuncao(inputNumber);
  resultadoElement.innerText = "Resultado: " + resultado;
  resultadoElement.style.color = "#333"; // Cor padrão para o resultado
}

function calcularFuncao(x) {
  if (x < -2) {
    return 2 * x + 2;
  } else if (x < 3) {
    return 3;
  } else {
    return -x;
  }
}
