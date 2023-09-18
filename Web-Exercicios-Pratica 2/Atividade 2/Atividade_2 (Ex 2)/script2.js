function calcular(){
    var salar = document.getElementById('salario');
    var resultado = document.getElementById ('result')
    var valor1 = salar.value;
    var porcent = valor1 * 0.25;
    var total = valor1 + porcent
    alert('O novo salário com aumento de 25% é igual a ' + total + ' pois o aumento foi igual a '+ porcent) 
    resultado.innerText = (total + " REAIS")
}
