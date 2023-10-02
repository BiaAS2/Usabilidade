function calcular() {
  const valor1 = Number(document.querySelector("#num1").value);
  const valor2 = Number(document.querySelector("#num2").value);
  const valor3 = Number(document.querySelector("#num3").value);

  const total = (valor1 + valor2 + valor3) / 3;

  var resultado = document.querySelector(".result");

  resultado.innerText = `A média entre suas 3 notas é ${total.toFixed(2)}`;
  resultado.style.color = "red";
}
