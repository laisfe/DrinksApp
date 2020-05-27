import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:drinks_app/models/recipes_model.dart';
import 'package:drinks_app/repository/recipes_repository.dart';

class MenuDrinksScreen extends StatefulWidget {
  @override
  _MenuDrinksScreen createState() => _MenuDrinksScreen();
}

class _MenuDrinksScreen extends State<MenuDrinksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Menu de drinks",
        ),
      ),
      body: FutureBuilder<List<RecipesModel>>(
        future: RecipesRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<RecipesModel> recipes) {
    return ListView.builder(
      itemCount: recipes == null ? 0 : recipes.length,
      itemBuilder: (BuildContext ctx, int index) {
        return containerDetalhes(recipes[index]);
      },
    );
  }

  Container containerDetalhes(RecipesModel recipes) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Row(
        children: <Widget>[
          InkWell(
            child: Container(
              height: 200,
              width: 372,
              child: Text(
                recipes.nome,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  shadows: [
                    Shadow(
                        // bottomLeft
                        offset: Offset(-1.5, -1.5),
                        color: Colors.redAccent),
                    Shadow(
                        // bottomRight
                        offset: Offset(1.5, -1.5),
                        color: Colors.redAccent),
                    Shadow(
                        // topRight
                        offset: Offset(1.5, 1.5),
                        color: Colors.redAccent),
                    Shadow(
                        // topLeft
                        offset: Offset(-1.5, 1.5),
                        color: Colors.redAccent),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.redAccent,
                  width: 2.0,
                ),
                image: new DecorationImage(
                  image: new AssetImage(
                    recipes.imagem,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.redAccent,
              ),
              alignment: Alignment(0.0, 0.0),
              margin: new EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 5.0,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                "/recipes_screen",
                arguments: recipes,
              );
            },
          ),
        ],
      ),
    );
  }
}
