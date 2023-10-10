function calcularTroco() {
  
  var valorPago = parseFloat(document.getElementById('valorPago').value);
  var valorCompra = parseFloat(document.getElementById('valorCompra').value);

  if (isNaN(valorPago) || isNaN(valorCompra)) {
    alert('Por favor, insira valores numéricos válidos.');
    return;
  }

  if (valorPago < valorCompra) {
    document.getElementById('resultado').innerHTML = 'A quantia paga é insuficiente para realizar a compra!';
    return;
  }

  var troco = valorPago - valorCompra;
  document.getElementById('resultado').innerHTML = 'Troco: R$ ' + troco.toFixed(2) + '<br>';

  var notas = [50, 20, 10, 5, 2, 1];
  for (var i = 0; i < notas.length; i++) {
    var quantidadeNotas = Math.floor(troco / notas[i]);
    troco %= notas[i];
    document.getElementById('resultado').innerHTML += 'Notas de R$ ' + notas[i].toFixed(2) + ': ' + quantidadeNotas + '<br>';
  }
   document.getElementById('resultado').classList.remove('escondido');  //<- para agagar , nao mostrar o resultado. vai removar depois result
}


