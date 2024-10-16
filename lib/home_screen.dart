import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_snack_app/order_now_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/backgrounds/bg_startscreen.png", 
            fit: BoxFit.cover), 
          Positioned(
            top: 150,
            left: 0,              
            child: Transform.scale(
              scale: 1.2,
              child: Image.asset("assets/grafics/chick cupcakes_3D.png"), 
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 56,
            child: Image.asset("assets/details/T2.png", fit: BoxFit.fitWidth), 
          ),
            Positioned( 
              top: 620, 
              left: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40), // Runder Rahmen
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8), // Verschwommenheit
                  child: Container(
                    height: 200, // Höhe Container
                    width: 360,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.1), // Weiße Umrandung
                      borderRadius: BorderRadius.circular(16), // Runder Rahmen
                   //   color: Colors.white.withOpacity(0.1), // Hintergrund durchsichtig
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 2), // Abstand oben
                          Text(
                            "Feeling Snackish Today?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              color: Colors.white, 
                              fontSize: 24, 
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Explore Angi's most popular snack selection and get instantly happy.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color.fromARGB(147, 255, 255, 255), fontSize: 12
                            ),
                          ),
                          SizedBox(height: 6),// abstand vor button
                          OrderNowButton(),
                        ],
                      )
                    ),
                  ), 
                ),
              ),
            ),
        ],
      ), 
    );
  }
}
