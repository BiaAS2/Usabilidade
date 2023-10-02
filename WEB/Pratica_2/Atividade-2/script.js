function calcular() {
  var salar = Number(document.getElementById("salario").value);
  var resultado = document.querySelector('.result');

  var porcent = salar * 0.25;
  var total = salar + porcent;

  resultado.innerText = `Seu salario + 25% é igual a ${total}`;
  resultado.style.color = 'red'
}
