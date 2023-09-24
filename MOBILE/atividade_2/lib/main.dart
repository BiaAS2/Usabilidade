class Produto {
  String nome;
  double preco;
  int codigo;
  String categoria;

  Produto(this.nome, this.preco, this.codigo, this.categoria);

  // Método para exibir os detalhes do produto
  void mostrarDetalhes() {
    print('Nome: $nome');
    print('Preço: R\$ $preco');
    print('Código: $codigo');
    print('Categoria: $categoria');
  }
}

void main() {
  // Exemplo de utilização da classe Produto
  var produto1 = Produto('Camiseta', 29.99, 1001, 'Vestuário');
  var produto2 = Produto('Notebook', 1499.99, 2002, 'Eletrônicos');

  // Exibir os detalhes dos produtos
  print('Detalhes do Produto 1:');
  produto1.mostrarDetalhes();

  print('\nDetalhes do Produto 2:');
  produto2.mostrarDetalhes();
}