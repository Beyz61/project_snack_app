import "dart:ui";
import "package:flutter/material.dart";
import "package:project_snack_app/widget/screens/all_categories_widget.dart";
import "package:project_snack_app/widget/screens/angis_yummy_container.dart";
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
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.fromLTRB(30,75,110,20),
                       child: Text("Choose Your Favorite Snack",
                      style: TextStyle( 
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                     ),
                    ),
                  const SizedBox(height: 0),
                  const AllCategoriesWidget(),
                  const SizedBox(height: 40),
                  const AngisYummyContainer(),   
                  const SizedBox(height: 20),
                  const Padding(padding: EdgeInsets.only(left: 22
                  ),
                  ),
                  const Text("  We Recommend",
                            style: TextStyle( 
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                   ),   
                textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 16),
                           SingleChildScrollView(scrollDirection: Axis.horizontal,
                     child: Row(
                     children: [
                      const MoglisCupContainer(),
                      const SizedBox(width: 26),
                     GestureDetector(
                     onTap: () {
                       showDialog(
                     context: context,
                     builder: (BuildContext context) => AlertDialog(
                     title: const Text("Choose your Sound"),
                     content: const Text("Sound \nSound \nSound \nSound"),
                     actions: <Widget>[
                      TextButton(
                     onPressed: () {
                      Navigator.of(context).pop(
                    );
                    },
                    child: const Text(
                      "Save"
                     ),
                    ),
                  ]
                 )
               );
             },
                     child: ClipRRect(
                     child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1000, sigmaY: 1000),           
                      child: Container(
                       width: 204,
                       height: 280,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(24),
                     border: Border.all(color: Colors.white, width: 0.2),
                     gradient: const LinearGradient(colors: [
                     Color.fromARGB(57, 82, 82, 82),
                     Color.fromARGB(132, 134, 90, 255),
                     Color.fromARGB(132, 134, 90, 255),
                     Color.fromARGB(132, 134, 90, 255),
                     Color.fromARGB(155, 105, 28, 177)
                     ],stops: [
                     0.1,
                     0.35,
                     0.5,
                     0.6,
                     0.9
                    ],
                     begin: Alignment.topCenter, 
                     end: Alignment.bottomCenter)
                     ),
                       child: Padding(
                        padding: const EdgeInsets.all(16.0),
                         child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                            Transform.scale(
                             scale: 1.0,
                             child: Image.asset("assets/grafics/cat cupcakes_3D.png"),),
                             const Text("Balu`s Cup",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white),
                                ),
                                const Text("Pistacihio ice cream",
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w300
                                ),
                                ),
                                const SizedBox(height: 16
                                ),
                                const Row(
                                 children: [
                                  Text(
                                     "₳8.99",
                                      style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                      ),
                                    ),
                                   Expanded(child: SizedBox()),
                                   Icon(Icons.favorite_border_rounded,
                                      color: Colors.white, 
                                      size: 12
                                      ),
                                   Text("190",
                                      style: TextStyle(
                                        color: Colors.white, 
                                        fontSize: 12
                                        ),
                                       ),
                                      ],
                                     ),
                                    ],
                                    ),
                                    ),
                                   ),
                                 ),
                               ),
                             ),
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
