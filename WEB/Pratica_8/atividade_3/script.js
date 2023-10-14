let numeros = [];

function encontrarMaiorNumero() {
    const inputNumeros = document.getElementById('numeros');
    const resultadoElemento = document.getElementById('resultado');

    const numeros = inputNumeros.value.split(' ').map(Number);

    if (numeros.some(isNaN)) {
        alert('Por favor, informe uma lista válida de números.');
        return;
    }

    const maiorNumero = Math.max(...numeros);

    resultadoElemento.textContent = `Maior Número: ${maiorNumero}`;

    inputNumeros.value = '';
}
