function calcular(){
    var tempC = document.getElementById('grausC');
    var resultado = document.getElementById('result')
    var grau1 = tempC.value;
    var grau2 = ((grau1*2) + 32);
    
    alert(grau1 +' em graus Celsius é igual a '+grau2+ ' em Farenheit')    
    resultado.innerText = (grau2 + "°F")
    resultado.style.backgroundColor = ('red')
}
