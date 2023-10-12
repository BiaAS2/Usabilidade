const btn = document.querySelector(".btn");

btn.addEventListener("click", () => {
  const valorProduto = 20;
  const formaPagamento = document.querySelector("#formaPagamento").value;
  const ress = document.querySelector(".ress");

  let valorPix = valorProduto - valorProduto * 0.1;
  let valorCreditoAVista = valorProduto - valorProduto * 0.05;
  let valorCredito3x = valorProduto + valorProduto * 0.06;

  if (formaPagamento === "pix") {
    ress.innerHTML = `O valor da sua compra sairá por ` + 'R$' + `${valorPix.toFixed(2)}`;
  } else if (formaPagamento === "creditoAVista") {
    ress.innerHTML = `O valor da sua compra sairá por ` + 'R$' + `${valorCreditoAVista.toFixed(2)}`;
  } else if (formaPagamento === "duasVezes") {
    ress.innerHTML = `O valor da sua compra sairá por ` + 'R$' + `${valorProduto.toFixed(2)}`;
  } else {
    ress.innerHTML = `O valor da sua compra sairá por ` + 'R$' + `${valorCredito3x.toFixed(2)}`;
  }

  ress.style.marginTop = "2rem"
});
