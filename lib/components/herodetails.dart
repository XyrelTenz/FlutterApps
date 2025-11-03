import "package:flutter/material.dart";

class HeroDetails extends StatelessWidget {
  const HeroDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            color: Colors.transparent,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "Details",
                  child: Image.asset(
                    'lib/assets/instagram.png',
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Instagram Details",
                  style: TextStyle(color: Color(0xff313131)),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
