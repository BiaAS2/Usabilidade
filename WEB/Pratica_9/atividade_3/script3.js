













var matriz = [
    [],
    [],
    []
];

function capvalor1() {
    var valor1 = document.getElementById('valor1').value;
    if (matriz[0].length < 3) {
        matriz[0].push(valor1);
    } else {
        window.alert("Limite atingido para essa linha");
    }
}

function capvalor2() {
    var valor2 = document.getElementById('valor2').value;
    if (matriz[1].length < 3) {
        matriz[1].push(valor2);
    } else {
        window.alert("Limite atingido para essa linha");
    }
}

function capvalor3() {
    var valor3 = document.getElementById('valor3').value;
    if (matriz[2].length < 3) {
        matriz[2].push(valor3);
    } else {
        window.alert("Limite atingido para essa linha");
    }
}

function mostrarMatriz() {
    var mostrar = document.getElementById('resultado');
    mostrar.innerHTML = '';

    for (var i = 0; i < 3; i++) {
        for (var x = 0; x < 3; x++) {
            if (matriz[i][x] !== undefined) {
                mostrar.innerHTML += matriz[i][x] + '  ';
            } else {
                mostrar.innerHTML += '_  ';
            }
        }
        mostrar.innerHTML += '<br>';
    }
}

function mostrarDiagoP() {
    var mostrar = document.getElementById('resultadoDiagonal');
    mostrar.innerText = ' ';

    var diagonalPrincipal = [matriz[0][0], matriz[1][1], matriz[2][2]];
    mostrar.innerText += diagonalPrincipal.join(', ');
}

function mostrarDiagoS() {
    var mostrar = document.getElementById('resultadoDiagonalSecundaria');
    mostrar.innerText = ' ';

    var diagonalSecundaria = [matriz[0][2], matriz[1][1], matriz[2][0]];
    mostrar.innerText += diagonalSecundaria.join(', ');
}






