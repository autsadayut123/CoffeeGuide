import 'package:coffee/constants.dart';
import 'package:coffee/data.dart';
import 'package:coffee/shared.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Recipe recipe;

  Detail({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation1(recipe.title),
                  buildTextSubTitleVariation1(recipe.description),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 310,
              padding: EdgeInsets.only(left: 16),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildTextTitleVariation2('Ingredient', false),
                      SizedBox(
                        height: 16,
                      ),
                      buildIngredient(
                        recipe.calories,
                        'Es Shot',
                        'ml',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      buildIngredient(
                        recipe.carbo,
                        'Milk',
                        'ml',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      buildIngredient(
                        recipe.protein,
                        'Sugar',
                        'Cc',
                      ),
                    ],
                  ),
                  Positioned(
                    right: -80,
                    child: Hero(
                      tag: recipe.image,
                      child: Container(
                        height: 310,
                        width: 310,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(recipe.image),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 80,
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildTextTitleVariation2('Procress', false),
                    buildTextSubTitleVariation1('1. Prepare an espresso shot.'),
                    buildTextSubTitleVariation1(
                        '2. Add sugar stir to dissolve.'),
                    buildTextSubTitleVariation1(
                        '3. Add evaporated milk evaporated milk stir to combine.'),
                    buildTextSubTitleVariation1(
                        '4. Pour the milk in a stainless steel jug stream the milk froth or use a milk frother.'),
                    buildTextSubTitleVariation1(
                        '5. Scoop ice, pour coffee mixture pour over. Then scoop milk froth on top.'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildIngredient(int value, String titie, String subTitie) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 150,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            boxShadow: [kBoxShadow],
          ),
          child: Row(
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [kBoxShadow],
                ),
                child: Center(
                  child: Text(
                    value.toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titie,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subTitie,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
