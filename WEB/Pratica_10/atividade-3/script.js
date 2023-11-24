class Pessoa {
    constructor(nome) {
      this.nome = nome;
    }
  }
  
  class PessoaFisica extends Pessoa {
    constructor(nome, cpf) {
      super(nome);
      this.cpf = cpf;
    }
  }
  
  class PessoaJuridica extends Pessoa {
    constructor(nome, cnpj) {
      super(nome);
      this.cnpj = cnpj;
    }
  }
  
  let pessoas = [];
  
  function cadastrarPessoa() {
    const nome = document.getElementById("nome").value;
    const cpf = document.getElementById("cpf").value;
    const cnpj = document.getElementById("cnpj").value;
  
    if (cpf) {
      pessoas.push(new PessoaFisica(nome, cpf));
    } else if (cnpj) {
      pessoas.push(new PessoaJuridica(nome, cnpj));
    }
  
    // Limpar os campos de entrada
    document.getElementById("nome").value = "";
    document.getElementById("cpf").value = "";
    document.getElementById("cnpj").value = "";
  }
  
  function imprimirCadastro() {
    const outputDiv = document.getElementById("output");
    outputDiv.innerHTML = "";
  
    for (const pessoa of pessoas) {
      if (pessoa instanceof PessoaFisica) {
        outputDiv.innerHTML += `Nome: ${pessoa.nome}, CPF: ${pessoa.cpf}<br>`;
      } else if (pessoa instanceof PessoaJuridica) {
        outputDiv.innerHTML += `Nome: ${pessoa.nome}, CNPJ: ${pessoa.cnpj}<br>`;
      }
    }
  }