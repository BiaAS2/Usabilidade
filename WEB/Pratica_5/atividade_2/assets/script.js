function login() {

    window.location.href = "curriculo.html";
  }
  
  function cadastrar() {

    const nome = document.getElementById("nome").value;
    const dataNascimento = document.getElementById("dataNascimento").value;
    const email = document.getElementById("email").value;

    localStorage.setItem("nome", nome);
    localStorage.setItem("dataNascimento", dataNascimento);
    localStorage.setItem("email", email);
  
    
    window.location.href = "curriculo.html";
  }
  
  
  document.getElementById("nomeCurriculo").innerText = localStorage.getItem("nome");
  document.getElementById("dataNascimentoCurriculo").innerText = localStorage.getItem("dataNascimento");
  document.getElementById("emailCurriculo").innerText = localStorage.getItem("email");
  