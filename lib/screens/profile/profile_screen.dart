import 'package:flutter/material.dart';
import 'package:mofi/screens/common_layout/headernav_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeaderNavLayout(
        child: SingleChildScrollView(
          child: Container(
            height: 500,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
