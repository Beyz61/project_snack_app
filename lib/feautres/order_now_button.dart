import 'package:flutter/material.dart';
import 'package:project_snack_app/widget/screen_to_fav.dart';

class OrderNowButton extends StatelessWidget {
  const OrderNowButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ScreenToFav ()
        ),
       );
      },
     child: Container(
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 248, 150, 183),
                blurRadius: 8,
                offset: Offset(1, 2), // Shadow position
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 243, 111, 219),
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
      child: Text("Order Now",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold)),
    ),
  ),
);
  }
}

