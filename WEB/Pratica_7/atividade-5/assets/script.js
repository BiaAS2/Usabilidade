function calcularSalario() {
    var codigo = document.getElementById('codigo').value;
    var horasTrabalhadas = document.getElementById('horasTrabalhadas').value;

    if (codigo === "" || isNaN(codigo) || codigo < 1 || codigo > 5 || horasTrabalhadas === "" || isNaN(horasTrabalhadas) || horasTrabalhadas < 0) {
        alert("Por favor, insira valores válidos.");
        return;
    }

    var resultado = calcularValorBruto(parseInt(codigo), parseFloat(horasTrabalhadas));

    document.getElementById('resultado').innerText = "Salário Bruto: R$ " + resultado.valor.toFixed(2) + " para " + resultado.nome;
}

function calcularValorBruto(codigo, horasTrabalhadas) {
    var valorHora;
    var nome;

    switch (codigo) {
        case 1:
            valorHora = 45.78;
            nome = 'Ana';
            break;
        case 2:
            valorHora = 60.00;
            nome = 'Bruna';
            break;
        case 3:
            valorHora = 38.99;
            nome = 'Carlos';
            break;
        case 4:
            valorHora = 45.78;
            nome = 'Diogo';
            break;
        case 5:
            valorHora = 45.78;
            nome = 'Ester';
            break;
        default:
            valorHora = 0;
            nome = '';
    }

    return { nome: nome, valor: valorHora * horasTrabalhadas };
}
