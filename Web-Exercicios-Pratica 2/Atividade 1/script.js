function calcularIdade() {
  var anoNascimento = document.getElementById("ano-nascimento").value;
  var anoAtual = document.getElementById("ano-atual").value;
  var idade = anoAtual - anoNascimento;
  let ress = document.getElementById("resultado");

  ress.innerHTML = "Idade: " + idade + " anos";
  ress.style.padding = "1rem";
}
