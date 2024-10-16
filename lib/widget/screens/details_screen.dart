import 'dart:ui';
import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 760,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 26, 27, 28),
              Color.fromARGB(218, 45, 41, 41)
            ],
          ),
        ),
      child: Stack(
        clipBehavior: 
        Clip.none, 
        fit: StackFit.expand, 
        children: <Widget>[
        Positioned(
          top: -140,
          left: -70,
           child: Transform.scale(
            scale: 0.8,
             child: const Image(
              image: AssetImage("assets/grafics/cat cupcakes_3D.png"),
            ),
          ),
        ),
         Positioned( 
              top: 230, 
              left: 20,
               child: ClipRRect(
               borderRadius: BorderRadius.circular(0), // Runder Rahmen
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8), // Verschwommenheit
                   child: Container(
                    height: 350, // Höhe Container
                     width: 360,
                       decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.1), // Weiße Umrandung
                      borderRadius: BorderRadius.circular(16), // Runder Rahmen
                   //   color: Colors.white.withOpacity(0.1), // Hintergrund durchsichtig
                    ),
                     child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 20), // Abstand oben
                          Text(
                            "Mogli`s Cup",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              color: Colors.white, 
                              fontSize: 24
                              ),
                             ),
                              SizedBox(height: 8),
                              Text(" Cat cupcakes schmecken sehr lecker \n sehr lecker schmecker \n Unglaublich und Unbeschreiblich lecker \n Mhhhhh Yummy Yummy",
                              style: TextStyle( 
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.white70,
                              ),
                              ),
                                 SizedBox(height: 20,),
                              Text("₳ 8.99",
                              style: TextStyle( 
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Divider(
                              color: Colors.white,
                              thickness: 0.4,
                              indent: 20,
                              endIndent: 20,
                            ),
                            SizedBox(height: 10
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Padding(padding: EdgeInsets.only(left: 16.0), 
                            child:
                            Row(
                              children: [
                                Text ("Ingrints",
                                style: TextStyle( 
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70,
                                       ),
                                      ),
                                      Expanded(
                                    flex: 10,
                                  child: SizedBox()),
                                Text ("Reviews",
                                style: TextStyle( 
                               fontSize: 14,
                               fontWeight: FontWeight.bold,
                              color: Colors.white70,
                             ),
                            ),
                           Expanded(
                            flex: 5,
                             child: SizedBox()),
                              ],
                            ),
                           ),                         
                          SizedBox(height: 7),
                           Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                            Icon(Icons.eco, color: Colors.white70),
                            SizedBox(width: 8),
                            Icon(Icons.casino, color: Colors.white70), 
                            SizedBox(width: 8),
                            Icon(Icons.icecream, color: Colors.white70), 
                            SizedBox(width: 8),
                            Icon(Icons.local_fire_department, color: Colors.white70),
                            //  Expanded(
                            // flex:5,
                            // child: SizedBox(),), 
                            Padding(
                              padding: EdgeInsets.only(left:85),
                              child: Icon(Icons.star, color: Colors.white, size: 20),
                            ),
                              SizedBox(width: 5),
                              Icon(Icons.star, color: Colors.white, size: 20),
                              SizedBox(width: 5),
                              Icon(Icons.star, color: Colors.white, size: 20),
                              SizedBox(width: 5,),
                              Icon(Icons.star_border_outlined, color: Colors.grey, size: 20),
                              //  Expanded(
                              //   flex: 2,
                              //   child: SizedBox(width: 10),
                              //   ),
                               Padding(
                                 padding: EdgeInsets.only(left:8),
                                 child: Text("4.0",style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 12,
                               ),
                             ),
                            ),
                          ],
                         ),
                       ),
                    ],
                  )
                ],
              ),
             ),
            ),
          )
         ),  
          Padding(
            padding: const EdgeInsets.fromLTRB(40,645,40,60),
            child: Container(
             decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 248, 150, 183),
                   blurRadius: 2,
                  offset: Offset(1, 2), // Shadow position
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 239, 55, 206),
                Color.fromARGB(218, 209, 152, 130)
              ], 
                begin: Alignment.centerLeft, 
                end: Alignment.centerRight
               ),
              ),
                   child: const Padding(
                   padding: EdgeInsets.symmetric(
                   vertical: 10,        // höhe
                   horizontal: 55       //button länge
                  ),
                  child: Text("Add to order for ₳8.99",
                style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
                ),
              ),
          ),
        ]
      )
    );
  }
}