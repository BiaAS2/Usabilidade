function calcularIdade() {
  const anoNascimento = document.getElementById("ano-nascimento").value;
  const anoAtual = document.getElementById("ano-atual").value;
  const idade = anoAtual - anoNascimento;
  const ress = document.querySelector('.result');

  ress.innerHTML = "Idade: " + idade + " anos";
  ress.style.color = "red" 
}
