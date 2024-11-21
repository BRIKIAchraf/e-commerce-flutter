import 'package:flutter/material.dart';
import '../components/Banner.dart';
import '../components/SpecialityMenu.dart';
import '../components/TopDoctors.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Import and use SectionThree
          ],
        ),
      ),
    );
  }
}
