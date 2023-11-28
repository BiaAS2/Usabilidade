let currentInput = '';
let fullExpression = '';
let operator = '';
let result = 0;

function appendNumber(number) {
    currentInput += number;
    fullExpression += number;
    updateDisplay();
}

function setOperator(op) {
    operator = op;
    result = Number(currentInput);
    fullExpression += operator;
    currentInput = '';
    updateDisplay();
}

function clearDisplay() {
    currentInput = '';
    operator = '';
    result = 0;
    fullExpression = '';
    updateDisplay();
}

function calculateResult() {
    // Divide a expressão completa em partes usando operadores
    let parts = fullExpression.split(/([+x/-])/);

    // Realiza cálculos de multiplicação e divisão primeiro
    for (let i = 1; i < parts.length; i += 2) {
        let operator = parts[i];
        if (operator === 'x' || operator === '/') {
            let num1 = Number(parts[i - 1]);
            let num2 = Number(parts[i + 1]);

            if (operator === 'x') {
                parts.splice(i - 1, 3, (num1 * num2).toString());
            } else {
                if (num2 !== 0) {
                    parts.splice(i - 1, 3, (num1 / num2).toString());
                } else {
                    // Lida com divisão por zero
                    clearDisplay();
                    alert("Erro: Divisão por zero.");
                    return;
                }
            }

            i -= 2; // Volta dois passos para verificar a próxima operação
        }
    }

    // Realiza cálculos de adição e subtração
    let result = Number(parts[0]);
    for (let i = 1; i < parts.length; i += 2) {
        let operator = parts[i];
        let num = Number(parts[i + 1]);

        if (operator === '+') {
            result += num;
        } else if (operator === '-') {
            result -= num;
        }
    }

    // Arredonda o resultado para uma casa decimal se necessário
    result = Math.round(result * 10) / 10;

    fullExpression = result.toString();
    currentInput = '';
    operator = '';
    updateDisplay();
}


function updateDisplay() {
    document.getElementById('display').value = fullExpression;
}

function appendDecimal() {
    // Verifica se já existe um ponto na entrada
    if (!currentInput.includes('.')) {
        currentInput += '.';
        fullExpression += '.';
        updateDisplay();
    }
}

function appendPercentage() {
    // Divide o número atual por 100
    currentInput = (Number(currentInput) / 100).toString();
    fullExpression = currentInput;
    updateDisplay();
}

function toggleSign() {
    // Inverte o sinal do número atual
    currentInput = (Number(currentInput) * -1).toString();
    fullExpression = currentInput;
    updateDisplay();
}
