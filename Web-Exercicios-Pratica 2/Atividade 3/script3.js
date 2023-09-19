function calcular() {
  var tempC = Number(document.getElementById("grausC").value);
  var resultado = document.getElementById("result");

  var grau2 = tempC * 1.8 + 32;
  {
    resultado.innerText = grau2.toFixed(2) + "°F";
    resultado.style.backgroundColor = "green";
    resultado.style.borderRadius = ".5rem";
    resultado.style.padding = ".5rem";
  }
}
