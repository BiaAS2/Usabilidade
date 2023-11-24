class Veiculo {
    constructor(chassi, placa) {
      this._chassi = chassi;
      this._placa = placa;
    }
  
    get chassi() {
      return this._chassi;
    }
  
    get placa() {
      return this._placa;
    }
  }
  
  let veiculos = [];
  
  function cadastrarVeiculo() {
    const chassiInput = document.getElementById('chassiInput');
    const placaInput = document.getElementById('placaInput');
  
    const chassiValidFeedback = document.getElementById('chassiInput').nextElementSibling;
    const chassiInvalidFeedback = document.getElementById('chassiInput').nextElementSibling.nextElementSibling;
    const placaValidFeedback = document.getElementById('placaInput').nextElementSibling;
    const placaInvalidFeedback = document.getElementById('placaInput').nextElementSibling.nextElementSibling;
  
    if (chassiInput.checkValidity()) {
      chassiInvalidFeedback.style.display = 'none';
      chassiValidFeedback.style.display = 'block';
    } else {
      chassiInvalidFeedback.style.display = 'block';
      chassiValidFeedback.style.display = 'none';
    }
  
    if (placaInput.checkValidity()) {
      placaInvalidFeedback.style.display = 'none';
      placaValidFeedback.style.display = 'block';
    } else {
      placaInvalidFeedback.style.display = 'block';
      placaValidFeedback.style.display = 'none';
    }
  
    if (!chassiInput.checkValidity() || !placaInput.checkValidity()) {
      return; // Não faz nada se houver erros de validação
    }
  
    const veiculo = new Veiculo(chassiInput.value, placaInput.value);
    veiculos.push(veiculo);
  
    exibirVeiculosCadastrados();
    limparFormulario();
  }
  
  function exibirVeiculosCadastrados() {
    const veiculosList = document.getElementById('veiculosList');
    veiculosList.innerHTML = '';
  
    veiculos.forEach((veiculo) => {
      const listItem = document.createElement('li');
      listItem.textContent = `Chassi: ${veiculo.chassi}, Placa: ${veiculo.placa}`;
      listItem.className = 'list-group-item';
      veiculosList.appendChild(listItem);
    });
  }
  
  function limparFormulario() {
    const chassiInput = document.getElementById('chassiInput');
    const placaInput = document.getElementById('placaInput');
  
    chassiInput.value = '';
    placaInput.value = '';
  
    resetFeedback();
  }
  
  function resetFeedback() {
    const chassiValidFeedback = document.getElementById('chassiInput').nextElementSibling;
    const chassiInvalidFeedback = document.getElementById('chassiInput').nextElementSibling.nextElementSibling;
    const placaValidFeedback = document.getElementById('placaInput').nextElementSibling;
    const placaInvalidFeedback = document.getElementById('placaInput').nextElementSibling.nextElementSibling;
  
    chassiValidFeedback.style.display = 'none';
    chassiInvalidFeedback.style.display = 'none';
    placaValidFeedback.style.display = 'none';
    placaInvalidFeedback.style.display = 'none';
  }
  