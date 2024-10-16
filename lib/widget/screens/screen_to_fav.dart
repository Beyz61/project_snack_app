import "package:flutter/material.dart";
import "package:project_snack_app/widget/screens/all_categories_widget.dart";
import "package:project_snack_app/widget/screens/angis_yummy_container.dart";
import "package:project_snack_app/widget/screens/balus_cup_container.dart";
import "package:project_snack_app/widget/screens/moglis_cup_container.dart";

class ScreenToFav extends StatelessWidget {
  const ScreenToFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/backgrounds/bg_mainscreen.png", 
              fit: BoxFit.cover), 
              const Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(30,75,110,20),
                       child: Text("Choose Your Favorite Snack",
                      style: TextStyle( 
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                     ),
                    ),
                  SizedBox(height: 0),
                  AllCategoriesWidget(),
                  SizedBox(height: 40),
                  AngisYummyContainer(),   
                  SizedBox(height: 20),
                  Padding(padding: EdgeInsets.only(left: 22
                  ),
                  ),
                  Text("  We Recommend",
                            style: TextStyle( 
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                   ),   
                textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 16),
                           SingleChildScrollView(scrollDirection: Axis.horizontal,
                     child: Row(
                     children: [
                      MoglisCupContainer(),
                      SizedBox(width: 26),
                     BalusCupContainer(),
                           ],
                         ),
                       ),
                      ], 
                   ),
                 ),
                  Positioned(
                   top: 170,
                   left: 55,
                   child: Transform.scale(
                   scale: 0.5,
                   child: 
                  Image.asset("assets/grafics/Burger_3D.png", 
                  fit: BoxFit.fitWidth
                  ),
                ),
              ), 
            ],
         ),
    );
  }
}
