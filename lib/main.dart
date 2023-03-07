import 'package:and2/pages/recipe_page.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context){

    return  MaterialApp(

      theme: ThemeData(fontFamily: "PatuaOne"),
      home:RecipePage(),

    );
  }


}