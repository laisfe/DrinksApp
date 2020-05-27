import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'package:drinks_app/models/recipes_model.dart';

class RecipesScreen extends StatelessWidget {
  // RecipesModel recipesModel;

  @override
  Widget build(BuildContext context) {
    final RecipesModel recipesModel = ModalRoute.of(context).settings.arguments;

    final recipeLines = Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 30),
          child: Text(
            "Ingredientes",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(50, 0, 50, 30),
          child: Text(
            recipesModel.ingredientes,
            style: TextStyle(
              fontSize: 20.0,
              height: 2.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );

    final instructionLines = Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
          child: Text(
            "Modo de preparo",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(50, 30, 50, 50),
          child: Text(
            recipesModel.instrucao,
            style: TextStyle(
              fontSize: 20.0,
              height: 2.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(50, 0, 50, 50),
          child: RaisedButton(
            child: Text("Compartilhe a receita"),
            textColor: Colors.white,
            color: Colors.redAccent,
            onPressed: () {
              Share.share(
                  "Olha só essa receita de ${recipesModel.nome}!\n\n ${recipesModel.ingredientes}\n\n${recipesModel.instrucao}");
            },
          ),
        ),
      ],
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 200.0,
            backgroundColor: Colors.redAccent,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(recipesModel.nome,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      shadows: [
                        Shadow(
                            // bottomLeft
                            offset: Offset(-1.0, -0.9),
                            color: Colors.redAccent),
                        Shadow(
                            // bottomRight
                            offset: Offset(1.0, -1.0),
                            color: Colors.redAccent),
                        Shadow(
                            // topRight
                            offset: Offset(1.1, 1.1),
                            color: Colors.redAccent),
                        Shadow(
                            // topLeft
                            offset: Offset(-0.8, 0.9),
                            color: Colors.redAccent),
                      ],
                    )),
                background: Image.asset(
                  recipesModel.imagem,
                  fit: BoxFit.cover,
                )),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              recipeLines,
              instructionLines,
            ]),
          ),
        ],
      ),
    );
  }
}
