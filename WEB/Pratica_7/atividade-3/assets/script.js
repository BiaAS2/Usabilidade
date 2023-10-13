function calcular() {
  var inputNumber = document.getElementById('inputNumber').value;

  if (inputNumber === "" || isNaN(inputNumber)) {
    alert("Por favor, insira um número válido.");
    return;
  }

  var resultado = calcularFuncao(parseFloat(inputNumber));

  document.getElementById('resultado').innerText = "F(x): " + resultado;
  function calcularFuncao(x) {
    if (x < -2) {
      return 2 * x + 2;
    } else if (x < 3) {
      return 3;
    } else {
      return -x;
    }
  }
}


