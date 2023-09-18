class Cliente {
  String nome;
  String email;
  String endereco;
  String telefone;

  Cliente(this.nome, this.email, this.endereco, this.telefone);

  // Método para exibir os detalhes do cliente
  void mostrarDetalhes() {
    print('Nome: $nome');
    print('Email: $email');
    print('Endereço: $endereco');
    print('Telefone: $telefone');
  }
}

void main() {
  // Exemplo de utilização da classe Cliente
  var cliente1 =
      Cliente('João', 'joao2134@gmail.com', 'Rua A, 123', '(11) 1234-5678');
  var cliente2 =
      Cliente('Maria', 'maria9087@gmail.com', 'Avenida B, 456', '(11) 9999-2323');

  // Exibir os detalhes dos clientes
  print('Detalhes do Cliente 1:');
  cliente1.mostrarDetalhes();

  print('\nDetalhes do Cliente 2:');
  cliente2.mostrarDetalhes();
}
