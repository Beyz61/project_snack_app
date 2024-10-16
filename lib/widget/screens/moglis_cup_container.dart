import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_snack_app/widget/screens/details_screen.dart';

class MoglisCupContainer extends StatelessWidget {
  const MoglisCupContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
         showModalBottomSheet(context: context, isScrollControlled: true, builder:(context){
          return DetailsScreen();
          }
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
                      Color.fromARGB(213, 82, 82, 82),
                      Color.fromARGB(132, 138, 127, 168),
                      Color.fromARGB(132, 134, 90, 255),
                      Color.fromARGB(132, 134, 90, 255),
                      Color.fromARGB(195, 127, 47, 202),
                    ], stops: [
                      0.1,
                      0.35,
                      0.5,
                      0.6,
                      0.9
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.scale(
                          scale: 1.0,
                          child: Image.asset("assets/grafics/cat cupcakes_3D.png"),),
                      const Text("Mogli`s Cup",
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white)),
                      const Text("Strawberry ice cream",
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Text(
                            "₳8.99",
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                          ),
                          Expanded(child: SizedBox()),
                          Icon(Icons.favorite_border_rounded,
                              color: Colors.white, size: 12),
                          Text("200",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
  }
}
