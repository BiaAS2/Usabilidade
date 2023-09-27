// ignore_for_file: avoid_print

//2) Possua uma classe para armazenar os dados dos produtos de uma fábrica.

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
  // Criar uma lista de Produtos
  List<Produto> produtos = [
    Produto('Hardware', 'Coolers', 254.99, 1001),
    Produto('Hardware', 'HD', 439.99, 1002),
    Produto('Hardware', 'Fonte', 499.99, 1003),
    Produto('Hardware', 'Memória RAM', 179.99, 1004),
    Produto('Hardware', 'Placa De video', 1.300, 1005),
    Produto('Hardware', 'Placa Mão', 599.99, 1006),
    Produto('Hardware', 'Processadores', 1.250, 10017),
    Produto('Hardware', 'SSD', 259.99, 1008),
  ];

  // Exibir os detalhes dos Produtos usando um loop
  for (var i = 0; i < produtos.length; i++) {
    print('\n_______________________________');
    print('\nDetalhes do Produto ${i + 1}:');
    produtos[i].mostrarDetalhes();
    print('_______________________________');
  }
}
