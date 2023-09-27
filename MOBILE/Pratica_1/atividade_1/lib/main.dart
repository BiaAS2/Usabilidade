// ignore_for_file: avoid_print

class Cliente {
  String nome;
  String email;
  String cep;
  String endereco;
  String telefone;

  Cliente(this.nome, this.email, this.cep, this.endereco, this.telefone);

  // Método para exibir os detalhes do cliente
  void mostrarDetalhes() {
    print('Nome: $nome');
    print('Email: $email');
    print('Cep: $cep');
    print('Endereço: $endereco');
    print('Telefone: $telefone');
  }
}

void main() {
  // Criar uma lista de clientes
  List<Cliente> clientes = [
    Cliente('Beatriz Alves', 'beatriz@gmail.com', '31 930-800',
        'Rua Mercedes Luiza Miranda', '(32) 2149-1177'),
    Cliente('Bianca Mayra', 'bianca@gmail.com', '35 660-021',
        'Rua Doutor Cândido', '(37) 3730-7225'),
    Cliente('Gabriel Anjos', 'gabriel9087@gmail.com', '36 406-413',
        'Rua Renganeschi Rodrigues Teles', '(31) 2632-2782'),
    Cliente('João Vitor', 'joao@gmail.com', '36 038-010',
        'Avenida Presidente Costa e Silva', '(35) 2524-6677'),
    Cliente('Lucelho Crisitano', 'lucelho@gmail.com', '37 501-344',
        'Vila Mestre Antônio Alves Filho', '(37) 2461-5336'),
    Cliente('Pedro Henrique', 'pedro@gmail.com', '38 412-037',
        'Rua Almirante Barroso', '(37) 2688-4017'),
    Cliente('Rafael Prazeres', 'rafael@gmail.com', '39 400-517',
        'Rua João Caldeira Filho', '(34) 3122-5726')
  ];

  // Exibir os detalhes dos clientes usando um loop
  for (var i = 0; i < clientes.length; i++) {
    print('\n_______________________________');
    print('\nDetalhes do Cliente ${i + 1}:');
    clientes[i].mostrarDetalhes();
    print('_______________________________');
  }
}
