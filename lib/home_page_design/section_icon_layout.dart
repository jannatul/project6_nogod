import 'package:flutter/cupertino.dart';

class SectionIconLayout extends StatelessWidget {
  final int totalItem;
  final List <String> listImagePath;

  const SectionIconLayout({super.key,required this.totalItem,required this.listImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, height: 200,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
          itemCount: totalItem,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          // itemBuilder- it is a function and it returns a widget-- Widget? Function(BuildContext, int)
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(3),
              child: Image.asset(listImagePath[index],) ,
            );}
      ),
    );
  }
}
