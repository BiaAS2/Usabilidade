function calcularNotas(cell) {
  var row = cell.parentElement
  var p1 = parseFloat(row.cells[1].textContent) || 0
  var p2 = parseFloat(row.cells[2].textContent) || 0
  var t1 = parseFloat(row.cells[3].textContent) || 0

  var total = p1 + p2 + t1
  row.cells[4].textContent = total.toFixed(2) // Exibe a média com 2 casas decimais
}
