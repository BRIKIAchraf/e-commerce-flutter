import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Center(
              child: Text(
                'CONTACT ${'US'.toUpperCase()}',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF707070),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Content section (flexible layout for mobile and desktop)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image
                Image.asset(
                  'assets/contact_image.png', // Make sure to add the image in the assets folder
                  width: MediaQuery.of(context).size.width > 600 ? 360 : MediaQuery.of(context).size.width, // Responsive width
                  fit: BoxFit.cover,
                ),

                SizedBox(width: 20),

                // Text content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Office information
                      Text(
                        'OUR OFFICE',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        '54709 Willms Station\nSuite 350, Washington, USA',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Tel: (415) 555-0132\nEmail: greatstackdev@gmail.com',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),

                      SizedBox(height: 20),

                      // Careers section
                      Text(
                        'CAREERS AT PRESCRIPTO',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Learn more about our teams and job openings.',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                      SizedBox(height: 12),

                      // Explore jobs button
                      ElevatedButton(
                        onPressed: () {
                          // Button action (you can add navigation here)
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 32, vertical: 12)),
                          textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 14)),
                        ),
                        child: Text(
                          'Explore Jobs',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
