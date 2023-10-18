function calcularNotas(cell) {
  var row = cell.parentElement
  var p1 = parseFloat(row.cells[1].textContent) || 0
  var p2 = parseFloat(row.cells[2].textContent) || 0

  var total = p1 + p2
  row.cells[3].textContent = total.toFixed(1) // Exibe a média com 2 casas decimais

  // Chamar a função inicialmente
  calcularMediaWeb()
}

function calcularNotasLogica(cell) {
  var row = cell.parentElement
  var p1 = parseFloat(row.cells[1].textContent) || 0
  var p2 = parseFloat(row.cells[2].textContent) || 0

  var total = p1 + p2
  row.cells[3].textContent = total.toFixed(1) // Exibe a média com 1 casa decimal

  // Chamar a função de cálculo de média para Lógica de Programação
  calcularMediaLogica()
}

function calcularMediaWeb() {
  let notasWeb = document.querySelectorAll("#tabela tbody:nth-of-type(1) td.notaTotal");
  let somaWeb = 0;
  let countWeb = 0;

  for (let i = 0; i < notasWeb.length; i++) {
    let notaWeb = parseFloat(notasWeb[i].innerText);
    if (!isNaN(notaWeb)) {
      somaWeb += notaWeb;
      countWeb++;
    }
  }
  let mediaWeb = somaWeb / countWeb;
  document.getElementById("mediaWeb").innerText = mediaWeb.toFixed(2);
}

function calcularMediaLogica() {
  let notasLogica = document.querySelectorAll("#tabela tbody:nth-of-type(1) td.notaTotal2");
  let somaLogica = 0;
  let countLogica = 0;

  for (let i = 0; i < notasLogica.length; i++) {
    let notaLogica = parseFloat(notasLogica[i].innerText);
    if (!isNaN(notaLogica)) {
      somaLogica += notaLogica;
      countLogica++;
    }
  }
  let mediaLogica = somaLogica / countLogica;
  document.getElementById("mediaProgram").innerText = mediaLogica.toFixed(2);
}

// Adiciona um ouvinte de evento para chamar a função sempre que houver uma mudança na tabela
document.getElementById("tabela").addEventListener("input");