// Seleciona o elemento ul
function criarElemento() {
  const ulElement = document.querySelector("ul");

  // Define os rótulos para os botões
  const rotulosBotoes = [
    "C",
    "+-",
    "%",
    "/",
    "7",
    "8",
    "9",
    "*",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    "0",
    ".",
  ];

  // Loop para criar e adicionar 18 elementos li
  for (let i = 0; i < 18; i++) {
    let liElement = document.createElement("li");
    liElement.textContent = rotulosBotoes[i]; // Usa o índice i para acessar o rótulo correspondente
    ulElement.appendChild(liElement);
  }
}

criarElemento();
