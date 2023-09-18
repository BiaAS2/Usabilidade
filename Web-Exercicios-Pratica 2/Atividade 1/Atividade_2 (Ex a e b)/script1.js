function calcular(){
    var nascer = document.getElementById('nasce');
    var anoatual = document.getElementById ('atual');

    var valor1 = nascer.value;
    var valor2 = anoatual.value;
    
    alert('Atualmente você tem ' + (valor2 - valor1) + ' anos')    
}
