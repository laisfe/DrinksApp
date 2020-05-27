import 'package:drinks_app/models/recipes_model.dart';

import 'database.dart';

class RecipesRepository {
  Future<List<RecipesModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<RecipesModel> recipes = new List<RecipesModel>();

    if (db.created) {
      recipes = new List<RecipesModel>();
      recipes.add(
        RecipesModel(
          id: 1,
          nome: 'Aperol Spritz',
          ingredientes: "750 ml de espumante;\n"
              "750 ml de Aperol;\n"
              "1 unidade de club soda;\n"
              "1 unidade de laranja bahia;\n"
              "1 copo medidor.",
          instrucao:
              "Corte a laranja em rodelas e depois corte cada rodela ao meio, fazendo o formato de meia lua.\n"
              "Pegue uma taça de vinho grande encha até a metade de gelo. Dica: prefira sempre os gelos especiais de coquetéis (aqueles com o furo no meio), pois demoram mais para derreter.\n"
              "Coloque 50 ml de Aperol. Em seguida, encha a taça com 150 ml de Espumante e coloque mais 50 ml de Aperol.\n"
              "Coloque uma meia lua de laranja, e se preferir coloque a outra na borda do copo para a decoração.\n"
              "Ao final de tudo, coloque um toque de club soda (cerca de 50 ml).",
          imagem: 'cocktail.jpg',
        ),
      );
      recipes.add(
        RecipesModel(
          id: 2,
          nome: 'Clericot',
          ingredientes:
              "1 garrafa de vinho branco seco ou suave (ou use espumante fica bom demais);\n"
              "1 maçã picada com casca;\n"
              "1 kiwi;\n"
              "2 ameixas frescas;\n"
              "2 rodelas de abacaxi;\n"
              "Uvas a gosto;\n"
              "1/2 laranja cortada em rodelas com a casca;\n"
              "2 colheres (de sopa) de açúcar;\n"
              "1 xícara (de chá) de club soda;\n"
              "1 cálice de licor de laranja ou Grand Marnier(mais ou menos 3 colheres de sopa)",
          instrucao:
              "Antes de começar a fazer, deixe os ingredientes gelando na geladeira.\n"
              "Pique as frutas (tire as sementes) e coloque em uma jarra, acrescente o vinho, o club soda e o licor (se você usar). Coloque o açúcar, mexa muito bem.\n"
              "Deixe na geladeira uns 30 minutos antes de servir. Sirva bem gelado.",
          imagem: 'clericot.jpg',
        ),
      );
      recipes.add(
        new RecipesModel(
          id: 3,
          nome: 'Cosmopolitan',
          ingredientes: "30 ml de vodka;\n"
              "15 ml de licor de laranja;\n"
              "15 ml de suco de limão;\n"
              "15 ml de suco de cranberry;\n"
              "Gelo.",
          instrucao:
              'Coloque todos os ingredientes em uma coqueteleira e bata bastante para que a mistura fique homogênea. Em seguida, coe o drinque direto para uma taça de martíni e sirva!',
          imagem: 'cosmopolitan.jpg',
        ),
      );
      recipes.add(
        RecipesModel(
          id: 4,
          nome: 'Daiquiri',
          ingredientes: "45 ml de rum;\n"
              "15 ml de xarope simples;\n"
              "25 ml de suco de limão taiti;\n"
              "Twist de limão taiti.",
          instrucao:
              "Bata todos os ingredientes em uma coqueteleira com gelo.\n"
              "Coe para uma taça e finalize com um twist de limão.",
          imagem: 'taca-daiquiri-laranja.jpg',
        ),
      );
      recipes.add(
        RecipesModel(
          id: 5,
          nome: 'Margarita',
          ingredientes: "1 colher (café) de açúcar;\n"
              "30 ml de Cointreau;\n"
              "30 ml de suco de limão taiti;\n"
              "60 ml de tequila;\n"
              "Gelo;\n"
              "Limão e sal para decorar a borda.",
          instrucao:
              "Em uma coqueteleira, coloque gelo, o açúcar, o Cointreau, o suco de limão e a tequila. Agite até o copo ficar gelado.\n"
              "Passe limão na borda do copo. Coloque sal em um prato raso e mergulhe a borda do copo.\n"
              "Coloque o drinque no copo, sem o gelo. ",
          imagem: 'margarita.jpg',
        ),
      );
      recipes.add(
        RecipesModel(
          id: 6,
          nome: 'Alexander',
          ingredientes: "1 lata de leite condensado;\n"
              "1 lata de creme de leite;\n"
              "conhaque;\n"
              "licor de cacau.",
          instrucao:
              "Coloque o creme de leite e o leite condensado no liquidificador. Use a lata do leite condensado para medir a quantidade de conhaque e de licor de cacau.\n"
              "Coloque uma lata de conhaque e uma de licor de cacau, bata tudo por um tempinho e reserve.\n"
              "Sirva gelado.",
          imagem: 'alexander.jpg',
        ),
      );
      recipes.add(
        RecipesModel(
          id: 7,
          nome: 'Mojito',
          ingredientes: "1 dose de rum branco;\n"
              "1 colher (sopa) de açúcar;\n"
              "suco de 1 limão;\n"
              "1/2 copo de água com gás (cerca de 100 ml);\n"
              "1 ramo de hortelã (ceca de umas 10 a 12 folhas);\n"
              "gelo picado a gosto.",
          instrucao:
              "Coloque num recipiente o suco do limão, a água com gás, o ramo de hortelã e o açúcar.\n"
              "Amasse bem todos os ingredientes, principalmente o hortelã (esse é o segredo do bom mojito)\n"
              "Depois é só adicionar o rum e o gelo e está pronto para servir.",
          imagem: 'mojito.jpg',
        ),
      );
      recipes.add(
        RecipesModel(
          id: 8,
          nome: 'Piña Colada',
          ingredientes:
              "3 garrafas de suco de abacaxi concentrado (1,5 litro no total);\n"
              "600 ml de rum (ou a gosto);\n"
              "2 latas de leite condensado;\n"
              "600 ml de leite de coco;\n"
              "200 g de creme de leite.",
          instrucao: "Misture bem todos os ingredientes. Sirva bem gelada",
          imagem: 'pina-colada.jpg',
        ),
      );
      
      recipes.add(
        RecipesModel(
          id: 9,
          nome: 'Sangria',
          ingredientes: "1 garrafa de vinho tinto seco (750ml);\n"
              "300 ml de suco de laranja – se quiser que fique uma bebida frisante, substiuir parte do suco de laranja por club soda, ou água com gás;\n"
              "Frutas – abacaxi, maçã, pêra, ameixa, morango, laranja em rodelas, pêssego, uva;\n"
              "2 pedaços de canela em pau.",
          instrucao:
              "Misture tudo muito bem numa jarra grande, experimente o doce, acrescente açúcar se for necessário.\n"
              "Sirva com muitas pedras de gelo.",
          imagem: 'sangria.jpg',
        ),
      );
      
      recipes.add(
        RecipesModel(
          id: 10,
          nome: 'Sex on the Beach',
          ingredientes: "1 dose de vodka;\n"
              "1/2 dose de licor de pêssego;\n"
              "1 dose de suco de laranja;\n"
              "7 gotas de xarope de groselha;\n"
              "2 pedra de gelo moído.",
          instrucao:
              "Numa coqueteleira apropriada, combine a vodka, o licor de pêssego e o suco de laranja. Adicione gelo em pedaços.\n"
              "No copo em onde o coquetel será servido, coloque metade da groselha. Despeje o conteúdo da coqueteleira e cubra com o restante da groselha.",
          imagem: 'sex-on-the-beach.jpg',
        ),
      );
    }

    return new Future.value(recipes);
  }
}
