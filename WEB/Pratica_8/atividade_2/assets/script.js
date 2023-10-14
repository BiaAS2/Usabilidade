let numeros = [];

function calcularMedia() {
    const inputNumero = document.getElementById('numero');
    const resultadoElemento = document.getElementById('resultado');

    const numero = parseFloat(inputNumero.value);

    if (isNaN(numero)) {
        alert('Por favor, informe um número válido.');
        return;
    }


    numeros.push(numero);


    const media = numeros.reduce((acc, curr) => acc + curr, 0) / numeros.length;

   
    resultadoElemento.textContent = `Média: ${media.toFixed(2)}`;

 
    inputNumero.value = '';
    
 
    if (numero === 0) {
        inputNumero.disabled = true;
        inputNumero.placeholder = 'Entrada encerrada';
    }
}
