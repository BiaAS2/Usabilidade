document.getElementById("contact-form").addEventListener("submit", function(event) {
      event.preventDefault(); // Impede o envio padrão do formulário

      var nome = document.getElementById("name").value;
      var email = document.getElementById("email").value;
      var motivoContato = document.getElementById("reason").value;
      var mensagem = document.getElementById("message").value;

      if (nome === "" || email === "" || motivoContato === "" || mensagem === "") {
        alert("Por favor, preencha todos os campos.");
      } else {
        // Adicione outras validações conforme necessário

        // Mostrar mensagem de agradecimento
        alert("Muito obrigada por nos enviar seu feedback!");

        // Substitua este console.log com a ação que deseja realizar após a validação bem-sucedida.
      }
    });