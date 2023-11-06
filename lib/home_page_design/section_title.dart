import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String sectionTitle;
  const SectionTitle({super.key,required this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(sectionTitle ,textAlign: TextAlign.left ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black87),),
    );
  }
}
