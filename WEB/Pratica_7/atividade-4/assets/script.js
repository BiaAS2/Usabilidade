function consultarPreco() {
    var codigo = document.getElementById('codigo').value;

    if (codigo === "" || isNaN(codigo) || codigo < 1 || codigo > 5) {
        alert("Por favor, insira um código de produto válido (1 a 5).");
        return;
    }

    var resultado = obterPreco(parseInt(codigo));

    document.getElementById('resultado').innerText = "Produto: " + resultado.nome + "\nPreço: R$ " + resultado.preco.toFixed(2);
}

function obterPreco(codigo) {
    switch (codigo) {
        case 1:
            return { nome: "Sapato", preco: 99.99 };
        case 2:
            return { nome: "Bolsa", preco: 103.89 };
        case 3:
            return { nome: "Camisa", preco: 49.98 };
        case 4:
            return { nome: "Calça", preco: 89.72 };
        case 5:
            return { nome: "Blusa", preco: 97.3};
        default:
            return { nome: "", preco: 0 };
    }
}
s
