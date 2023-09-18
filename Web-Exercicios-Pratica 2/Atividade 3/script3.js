function calcular() {
  var tempC = Number(document.getElementById("grausC").value);
  var resultado = document.getElementById("result");

  var grau2 = tempC * 2 + 32;

  alert(tempC + " em graus Celsius é igual a " + grau2 + " em Farenheit");
  resultado.innerText = grau2 + "°F";
  resultado.style.backgroundColor = "red";
}
