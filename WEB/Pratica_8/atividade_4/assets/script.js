function resolverEquacao() {
    const a = parseFloat(prompt("Digite o valor de a:"));
    const b = parseFloat(prompt("Digite o valor de b:"));
    const c = parseFloat(prompt("Digite o valor de c:"));

    if (a === 0 && b === 0 && c === 0) {
        alert("Igualdade confirmada: 0 = 0");
    } else if (a === 0 && b === 0 && c !== 0) {
        alert("Coeficientes informados incorretamente");
    } else if (a === 0 && b !== 0) {
        const x = -c / b;
        alert(`Esta é uma equação de primeiro grau: x = ${x}`);
    } else if (a !== 0) {
        const delta = b * b - 4 * a * c;

        if (delta < 0) {
            alert(`Esta equação não possui raízes reais (delta < 0): delta = ${delta}`);
        } else if (delta === 0) {
            const x = -b / (2 * a);
            alert(`Esta equação possui duas raízes reais iguais: x' = x'' = ${x}`);
        } else {
            const x1 = (-b + Math.sqrt(delta)) / (2 * a);
            const x2 = (-b - Math.sqrt(delta)) / (2 * a);
            alert(`Esta equação possui duas raízes reais diferentes: delta = ${delta}, x' = ${x1.toFixed(2)}, x'' = ${x2.toFixed(2)}`);
        }
    }
}

function iniciarResolucao() {
    let continuar = true;

    while (continuar) {
        resolverEquacao();
        continuar = confirm("Deseja resolver outra equação?");
    }

   
    window.close();

}

