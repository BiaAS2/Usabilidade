function calcularNotas(cell) {
  var row = cell.parentElement;
  var p1 = parseFloat(row.cells[1].textContent) || 0;
  var p2 = parseFloat(row.cells[2].textContent) || 0;
  var t1 = parseFloat(row.cells[3].textContent) || 0;

  var total = p1 + p2 + t1;
  row.cells[4].textContent = total.toFixed(1); // Exibe a média com 2 casas decimais

  // Chamar a função inicialmente
  calcularMedia();
}

function calcularMedia() {
  const tabela = document.getElementById("tabela");
  const linhas = tabela.querySelectorAll("tbody tr");
  let soma = 0;
  let count = 0;

  linhas.forEach((linha) => {
    const colunas = linha.querySelectorAll("td");
    for (let i = 4; i < colunas.length - 1; i++) {
      const valor = parseFloat(colunas[i].textContent);
      if (!isNaN(valor)) {
        soma += valor;
        count++;
      }
    }
  });

  const media = count > 0 ? soma / count : 0;
  document.getElementById("mediaTurma").textContent = media.toFixed(1);

  // Adicionar um ouvinte de evento para chamar a função sempre que houver uma mudança na tabela
  document.getElementById("tabela").addEventListener("input", calcularMedia);
}
function mostrarCelula() {
  const btn = document.querySelector(".btn");
  const tabela = document.querySelector("#tabela");

  btn.innerHTML = "Clique e veja a tabela";
  
  btn.addEventListener("click", () => {
    tabela.classList.toggle("visible");
    btn.classList.toggle("right");

    if (btn.classList.contains("right")) {
      btn.innerHTML = "Clique e esconda tabela";
    } else {
      btn.innerHTML = "Clique e veja a tabela";
    }
  });
}

mostrarCelula();
