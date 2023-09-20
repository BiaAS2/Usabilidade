function mostrarCalculos() {
  var R = document.getElementById('raio').value

  // Calcula o comprimento da esfera (circunferência)
  const C = (2 * Math.PI * R).toFixed(2)
  document.getElementById('comprimento').innerHTML = 'Comprimento da Esfera:' + C

  // Calcula a área da esfera
  const A = (Math.PI * Math.pow(R, 2)).toFixed(2)
  document.getElementById('area').innerHTML = 'Área da Esfera:' + A

  // Calcula o volume da esfera
  const V = ((3 / 4) * Math.PI * Math.pow(R, 3)).toFixed(2)
  document.getElementById('volume').innerHTML = 'Volume da Esfera:' + V
}

