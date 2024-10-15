import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_snack_app/widget/screens/screen_to_fav.dart';

class AngisYummyContainer extends StatelessWidget {
  const AngisYummyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), // Runder Rahmen
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8), // Verschwommenheit
        child: Container(
          height: 200, // Höhe Container
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.1), // Weiße Umrandung
            borderRadius: BorderRadius.circular(16
            ), // Runder Rahmen                  
          ),
            child: Positioned(
              top: 50,
              left: 20,
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const
                  EdgeInsets.all(16),
                  child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Angi's Yummy Burger",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(child: Container()),
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 233, 30, 169),
                              size: 20,
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              "4.8",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Delish vegan Burger\nthat tastes like heaven",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "₳ 13.99",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                 const SizedBox( height: 30),
           GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ScreenToFav ()));
          },
          child: Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
    color: Color.fromARGB(255, 248, 150, 183),
    blurRadius: 2,
    offset: Offset(1, 2), // Shadow position
                  ),
                ],
                borderRadius: BorderRadius.circular(6),
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 148, 65, 216),
                  Color.fromARGB(218, 199, 130, 209)
                ], 
            begin: Alignment.centerLeft, 
            end: Alignment.centerRight
            ),
            ),
          
               child: const Padding(
              padding: EdgeInsets.fromLTRB(10,8,10,8),   
                 child: Text("Add to order",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
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
             ),
           ),
          );
  }
}
