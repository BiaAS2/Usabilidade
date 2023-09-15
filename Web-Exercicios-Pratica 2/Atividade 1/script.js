function calcularIdade() {
  var anoNascimento = document.getElementById("ano-nascimento").value
  var anoAtual = document.getElementById("ano-atual").value
  var idade = anoAtual - anoNascimento
  document.getElementById("resultado").innerHTML = "Idade: " + idade + " anos"
 }