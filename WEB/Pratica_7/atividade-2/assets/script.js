function calculateIMC() {
    var weight = parseFloat(document.getElementById("weight").value);
    var height = parseFloat(document.getElementById("height").value);

    if (isNaN(weight) || isNaN(height) || height === 0) {
        alert("Por favor, insira valores válidos para peso e altura.");
        return;
    }

    var imc = weight / (height * height);
    var result = "";

    if (imc < 20) {
        result = "Abaixo do Peso";
    } else if (imc < 25) {
        result = "Normal";
    } else if (imc < 30) {
        result = "Sobrepeso";
    } else if (imc < 35) {
        result = "Obesidade grau I";
    } else if (imc < 40) {
        result = "Obesidade grau II";
    } else {
        result = "Obesidade grau III";
    }

    var resultList = document.getElementById("resultList");
    resultList.innerHTML = "<li>IMC: " + imc.toFixed(2) + "</li><li>Situação: " + result + "</li>";
}
