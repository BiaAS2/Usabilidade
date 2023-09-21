function calcular() {
  var val1 = document.getElementById("num1");
  var val2 = document.getElementById("num2");
  var val3 = document.getElementById("num3");
  var valor1 = Number(num1.value);
  var valor2 = Number(num2.value);
  var valor3 = Number(num3.value);

  var total = (valor1 + valor2 + valor3) / 3;

  var resultado = document.getElementById("result");

  resultado.innerText = `A média entre suas 3 notas é ${total}`;
}
