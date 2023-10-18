import 'package:flutter/material.dart';
import 'segundaRota.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álbum"),
        backgroundColor: Colors.green,
      ),

      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  title: 'Nova York',
                  subtitle: 'Nova York, EUA',
                  description:
                      'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo.',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),

          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  title: 'Montanha',
                  subtitle: 'Montanha, África',
                  description:
                      'Montanha ou monte é uma forma de relevo. Uma sequência de montanhas denomina-se cordilheira. Uma montanha tem imponência e altitude superiores a uma colina, embora não exista uma altitude específica única para essa diferenciação.',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),
          
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  title: 'Praia',
                  subtitle: 'Praia, Maldivas',
                  description:
                      'As praias das Maldivas são conhecidas por sua areia branca, água morna e cristalina que corresponde a 90% do território do local. Elas são localizadas em ilhas que estão espalhadas por 90 mil km², entre duas fileiras de atóis do Oceano Índico.',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),

          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  title: 'Deserto',
                  subtitle: 'Deserto do Saara',
                  description:
                      'O Deserto do Saara ou Deserto do Sara ou Deserto do Sáara é conhecido por ser o maior deserto quente do mundo. Oficialmente, é o terceiro maior deserto da Terra, logo após a Antártida e o Ártico, pois estas duas também são consideradas desertos.',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),

          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  title: 'Praia',
                  subtitle: 'Praia do Caribe',
                  description:
                      'O Caribe, também chamado Caraíbas e América Caribenha, é uma região do continente americano formada pelo Mar do Caribe, suas ilhas e Estados insulares. Também é chamado de Antilhas ou Índias Ocidentais, nome originado pela crença inicial europeia de que o continente americano fosse a Índia.',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),

          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  title: 'Tenda',
                  subtitle: 'Tipi, tenda indígena',
                  description:
                      'Um tipi é uma tenda cônica, originalmente feita de peles de animais como o bisonte, e paus de madeira. O tipi era utilizado pelos povos indígenas nômades dos Estados Unidos das Grandes Planícies mas também têm sido construídos e habitados em outras partes geográficas, como é o caso dos Timucuas na Flórida.',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),

          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  title: 'Montanha',
                  subtitle: 'Monte Roraima',
                  description:
                      'O monte Roraima é um monte localizado na América do Sul, na tríplice fronteira entre Brasil, Venezuela e Guiana. Constitui um tepui, um tipo de monte em formato de mesa bastante característico do planalto das Guianas.',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),

          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  title: 'Montanha',
                  subtitle: 'Monte Cairo',
                  description:
                      'O monte Cairo é uma montanha situada na região do Lácio, Itália. Tem 1 669 metros de altitude. Seu nome latino é Mons Clarius, assim denominado pois ali havia um templo dedicado a Apolo (Clarius) onde hoje está a Abadia de Montecassino.',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),

          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  title: 'Plantas',
                  subtitle: 'Folhagem',
                  description:
                      'Em botânica, a folha são órgãos das plantas especializados na captação de luz e trocas gasosas com a atmosfera para realizar a fotossíntese, transpiração, gutação e respiração.',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),
        ],
      ),
    );
  }
}