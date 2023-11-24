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

  let soma = 0;

  // Loop para criar e adicionar 18 elementos li
  for (let i = 0; i < 18; i++) {
    let liElement = document.createElement("li");
    liElement.textContent = rotulosBotoes[i]; // Usa o índice i para acessar o rótulo correspondente
    ulElement.appendChild(liElement);

    // Adiciona um evento de clique ao elemento li
    liElement.addEventListener("click", () => {
      // Seleciona a div de resultado
      let divResultado = document.querySelector(".resultado");

      divResultado.textContent += liElement.textContent;

      if (liElement.textContent == "C") {
        divResultado.textContent = "";
      }
    });
  }
}
criarElemento();

// Variáveis para armazenar a entrada e a operação
let entrada = "";
let a = "";
let operacao = "";

// Adiciona um evento de clique a cada botão
let botoes = document.querySelectorAll("li");
botoes.forEach((botao) => {
  botao.addEventListener("click", () => {
    // Se o botão é um sinal aritmético, define a e operacao
    if (["+", "-", "*", "/"].includes(botao.textContent)) {
      a = parseFloat(entrada);
      operacao = botao.textContent;
      entrada = "";
    } else {
      // Se o botão é um número, adiciona à entrada
      entrada += botao.textContent;
    }
  });
});

// Adiciona um evento de clique ao botão de igual
document.querySelector(".calcular").addEventListener("click", () => {
  // Obtém o valor de b
  let b = parseFloat(entrada);

  // Calcula o resultado e exibe na div de resultado
  let resultado = calcular(operacao, a, b);
  document.querySelector(".resultado").textContent = resultado;

  // Limpa a entrada e a operação
  entrada = "";
  operacao = "";

  // quando o botão de igual for clicado a pagina ira recarregar depois de 5 segundos
  setTimeout(function () {
    location.reload();
  }, 2500);
});

function somar(a, b) {
  return Number(a + b);
}

function subtrair(a, b) {
  return Number(a - b);
}

function multiplicar(a, b) {
  return Number(a * b);
}

function dividir(a, b) {
  if (b !== 0) {
    return Number(a / b);
  } else {
    return "Erro: Divisão por zero";
  }
}

// Função para gerenciar a entrada do usuário e chamar a função de operação apropriada
function calcular(operacao, a, b) {
  switch (operacao) {
    case "+":
      return somar(a, b);
    case "-":
      return subtrair(a, b);
    case "*":
      return multiplicar(a, b);
    case "/":
      return dividir(a, b);
    default:
      return "Erro: Operação inválida";
  }
}
