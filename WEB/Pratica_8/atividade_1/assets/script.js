const valorPagoInput = document.getElementById("valorPago");
const valorCompraInput = document.getElementById("valorCompra");
const resultadoDiv = document.getElementById("resultado");

function calcularTroco() {
  const valorPago = parseFloat(valorPagoInput.value);
  const valorCompra = parseFloat(valorCompraInput.value);

  if (isNaN(valorPago) || isNaN(valorCompra)) {
    resultadoDiv.innerHTML = "Por favor, digite valores válidos.";
    resultadoDiv.classList.add("erro");
    resultadoDiv.classList.remove("escondido");
    return;
  }

  let troco = valorPago - valorCompra;

  if (troco < 0) {
    resultadoDiv.innerHTML = "Quantia paga é insuficiente para realizar a compra.";
    resultadoDiv.classList.add("erro");
    resultadoDiv.classList.remove("escondido");
    return;
  }

  const notasDisponiveis = [50, 20, 10, 5, 2, 1];
  let resultadoHTML = "Troco:<br>";

  notasDisponiveis.forEach((nota) => {
    const quantidadeNotas = Math.floor(troco / nota);
    if (quantidadeNotas > 0) {
      resultadoHTML += `${quantidadeNotas} nota(s) de R$${nota},00<br>`;
      troco %= nota;
    }
  });

  resultadoDiv.innerHTML = resultadoHTML;
  resultadoDiv.classList.remove("erro");
  resultadoDiv.classList.remove("escondido");
}
