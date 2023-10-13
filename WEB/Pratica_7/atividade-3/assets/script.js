function calcular() {
    
    var inputNumber = document.getElementById('inputNumber').value;

    
    if (inputNumber === "" || isNaN(inputNumber)) {
        alert("Por favor, insira um número válido.");
        return;
    }

   
    var resultado = f(parseFloat(inputNumber));
    document.getElementById('resultado').innerText = "Resultado: " + resultado;
}

function f(x) {
    if (x < -2) {
        return 2 * x + 2;
    } else if (x < 3) {
        return 3;
    } else {
        return 0;

    }
    var resultado = f(parseFloat(inputNumber));
    document.getElementById('resultado').innerText = "Resultado: " + resultado;
}

