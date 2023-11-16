var vetor = [];

vetor[0] = "Numero 1";
vetor[1] = "Numero 2";
vetor[2] = "Numero 3";
vetor[3] = "Numero 4";
vetor[4] = "Numero 5";
vetor[5] = "Numero 6";
vetor[6] = "Numero 7";
vetor[7] = "Numero 8";
vetor[8] = "Numero 9";
vetor[9] = "Numero 10";

function lerPosicao() {
    var posicao = parseInt(document.getElementById("posicao").value);
    var leitura = document.getElementById("listar");
    
    if (posicao >= 0 && posicao < vetor.length) {
        leitura.innerText = "Valor na posição " + posicao + ": " + vetor[posicao];
    } else {
        leitura.innerText = "Posição inexistente, insira um valor entre 0 e 9";
    }
}

function imprimirVetor() {
    var leitura = document.getElementById("listar");
    leitura.innerText = vetor.join(', ');
}

function ler() {
    imprimirVetor();
}

function imprimirVetorInverso() {
    var leitura = document.getElementById("listar");
    var inverso = vetor.slice().reverse();
    leitura.innerText = inverso.join(', ');
}

function lerinverso(){
    imprimirVetorInverso();
}
