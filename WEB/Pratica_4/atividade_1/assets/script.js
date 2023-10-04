function calcularNotas(cell) {
  var row = cell.parentElement
  var p1 = parseFloat(row.cells[1].textContent) || 0
  var p2 = parseFloat(row.cells[2].textContent) || 0
  var t1 = parseFloat(row.cells[3].textContent) || 0

  var total = p1 + p2 + t1
  row.cells[4].textContent = total.toFixed(2) // Exibe a média com 2 casas decimais

  var tabela = document.getElementById("tabela").getElementsByTagName("tbody")[0]
  var linhas = tabela.getElementsByTagName(".notaTotal")

  // Loop pelas linhas da tabela
  for (var i = 0; i < linhas.length; i++) {
    var celulaNota = linhas[i].getElementsByTagName("td")[1]
    var nota = parseFloat(celulaNota.textContent)
    if (!isNaN(nota)) {
      total += nota
    }
  }

  // Calcula a média e atualiza a célula de média
  var media = total / tabela.rows.length
  document.getElementById("mediaTurma").textContent = media.toFixed(2) // Limita a 2 casas decimais
}
