import 'package:and2/components/recipe_menu.dart';
import 'package:and2/components/recipe_title.dart';
import 'package:flutter/material.dart';

import '../components/recipe_list_item.dart';
import 'package:flutter/cupertino.dart';
AppBar _buildRecipeAppbar(){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0,
    actions: const[
      Icon(
          CupertinoIcons.search,
        color: Colors.black,

      ),
      SizedBox(width: 15),
      Icon(CupertinoIcons.heart,
      color: Colors.redAccent,
      ),
      SizedBox(width: 15)
    ],
  );
}

class RecipePage extends StatelessWidget{
  const RecipePage({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const[
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem('coffee', 'Madecoffe'),
            RecipeListItem('burger', 'MadeBugger'),
            RecipeListItem('pizza', 'MadePizza'),
          ],
        ),
      ),
    );
  }}