function mostrarCalculos() {
  var R = document.getElementById("raio").value;

  //Verifica se a raíz é menor ou igual a 0(zero)
  if (R <= 0) {
    alert(
      "Número Inexistente! \nO valor que você está procurando não existe. \nTente novamente."
    );
  } else {
    // Calcula o comprimento da esfera (circunferência)
    const C = (2 * Math.PI * R).toFixed(2);
    document.getElementById("comprimento").innerHTML = C;

    // Calcula a área da esfera
    const A = (Math.PI * Math.pow(R, 2)).toFixed(2);
    document.getElementById("area").innerHTML = A;

    // Calcula o volume da esfera
    const V = ((3 / 4) * Math.PI * Math.pow(R, 3)).toFixed(2);
    document.getElementById("volume").innerHTML = V;
  }
}
