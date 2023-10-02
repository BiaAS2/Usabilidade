// ignore_for_file: avoid_print

class Produto {
  String nome;
  String categoria;
  double preco;
  int codigoDeBarra;

  Produto(this.nome, this.categoria, this.preco, this.codigoDeBarra);

  // Método para exibir os detalhes do Produto
  void mostrarDetalhes() {
    print('Nome: $nome');
    print('Preço: R\$ $preco');
    print('Código: $codigoDeBarra');
    print('Categoria: $categoria');
  }
}

void main() {
  Produto produto1 = Produto('Hardware', 'Coolers', 254.99, 1001);
  Produto produto2 = Produto('Hardware', 'HD', 439.99, 1002);
  Produto produto3 = Produto('Hardware', 'Fonte', 499.99, 1003);
  Produto produto4 = Produto('Hardware', 'Memória RAM', 179.99, 1004);
  Produto produto5 = Produto('Hardware', 'Placa De video', 1300.00, 1005);
  Produto produto6 = Produto('Hardware', 'Placa Mão', 599.99, 1006);
  Produto produto7 = Produto('Hardware', 'Processadores', 1250.00, 1007);
  Produto produto8 = Produto('Hardware', 'SSD', 259.99, 1008);

  print('\n_______________________________');
  print('\nDetalhes do Produto 1:');
  produto1.mostrarDetalhes();
  print('_______________________________');

  print('\n_______________________________');
  print('\nDetalhes do Produto 2:');
  produto2.mostrarDetalhes();
  print('_______________________________');

  print('\n_______________________________');
  print('\nDetalhes do Produto 3:');
  produto3.mostrarDetalhes();
  print('_______________________________');

  print('\n_______________________________');
  print('\nDetalhes do Produto 4:');
  produto4.mostrarDetalhes();
  print('_______________________________');

  print('\n_______________________________');
  print('\nDetalhes do Produto 5:');
  produto5.mostrarDetalhes();
  print('_______________________________');

  print('\n_______________________________');
  print('\nDetalhes do Produto 6:');
  produto6.mostrarDetalhes();
  print('_______________________________');

  print('\n_______________________________');
  print('\nDetalhes do Produto 7:');
  produto7.mostrarDetalhes();
  print('_______________________________');

  print('\n_______________________________');
  print('\nDetalhes do Produto 8:');
  produto8.mostrarDetalhes();
  print('_______________________________');
}
