function resolverEquacao() {
    const a = parseFloat(document.getElementById("inputA").value);
    const b = parseFloat(document.getElementById("inputB").value);
    const c = parseFloat(document.getElementById("inputC").value);
    const reminderDiv = document.getElementById("reminder");
    const resultsDiv = document.getElementById("results");

  
    reminderDiv.innerHTML = `<p>Resolvendo equação para a=${a}, b=${b}, c=${c}</p>`;

    if (a === 0 && b === 0 && c === 0) {
        resultsDiv.innerHTML = "<p> Igualdade confirmada: 0 = 0</p>";
    } else if (a === 0 && b === 0 && c !== 0) {
        resultsDiv.innerHTML = "<p> Coeficientes informados incorretamente</p>";
    } else if (a === 0 && b !== 0) {
        const x = -c / b;
        resultsDiv.innerHTML = `<p> Esta é uma equação de primeiro grau: x = ${x}</p>`;
    } else if (a !== 0) {
        const delta = b * b - 4 * a * c;

        if (delta < 0) {
            resultsDiv.innerHTML = `<p> Esta equação não possui raízes reais (delta < 0): delta = ${delta}</p>`;
        } else if (delta === 0) {
            const x = -b / (2 * a);
            resultsDiv.innerHTML = `<p> Esta equação possui duas raízes reais iguais: x' = x'' = ${x}</p>`;
        } else {
            const x1 = (-b + Math.sqrt(delta)) / (2 * a);
            const x2 = (-b - Math.sqrt(delta)) / (2 * a);
            resultsDiv.innerHTML = `<p>Esta equação possui duas raízes reais diferentes: delta = ${delta}, x' = ${x1.toFixed(2)}, x'' = ${x2.toFixed(2)}</p>`;
        }
    }
}
