function calcularHipo() {
  var cat1 = document.getElementById('valor1').value
  var cat2 = document.getElementById('valor2').value

  //calcular os catetos
  const hipotenusa = Math.sqrt(Math.pow(cat1, 2) + Math.pow(cat2, 2)).toFixed(2);
  
  document.getElementById('resultado').innerHTML = 'O valor da hipotenusa é: ' + hipotenusa;
}