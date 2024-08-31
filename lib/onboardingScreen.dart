import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/login.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: SafeArea(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Adjusts positioning
          children: [
            SizedBox(
                height:
                    20), // Add some space at the top to push the content down
            Image.asset(
              'images/news1.jpg', // Ensure this path is correct
              height: 270, // Reduced height to make more space for the text
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    'Keep every news & updates in your pocket',
                    style: GoogleFonts.acme(
                        letterSpacing: .6, fontSize: 20), // Adjust font size
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                      height:
                          20), // Increase the gap between title and description
                  Text(
                    "Keep every news & updates in your pocket, ensuring you stay informed with the latest headlines and stories. Never miss out on what's happening around the world, whether at work or leisure.",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 16, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical:
                      60.0), // Increase vertical padding to push the button lower
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Let's Start",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
