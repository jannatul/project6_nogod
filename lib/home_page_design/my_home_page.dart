import 'package:flutter/material.dart';
import 'package:project6/home_page_design/data_file.dart';
import 'package:project6/home_page_design/section_icon_layout_two_row.dart';
import 'package:project6/home_page_design/section_title.dart';
import 'package:project6/home_page_design/section_icon_layout.dart';
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
    List <String>listImagePathServices  = createListImagePathServices();
   List <String> listImagePathPayment =   createListImagePathPayment();
   List <String> listImagePathOthers =   createListImagePathOthers();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(leading:Image.asset('assets/img_1.png'),title: const Text('নগদ, ডাক বিভাগের ডিজিটাল লেনদেন Jannatul',style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.white) ,) ,backgroundColor: Colors.deepOrangeAccent,),
     bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: Colors.indigoAccent,
       unselectedItemColor: Colors.black87,
       backgroundColor: Colors.orangeAccent,
       iconSize: 20,
       items: [
         BottomNavigationBarItem(icon: Image.asset('assets/img_1.png'), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.table_rows_outlined),label: 'Transaction'),
         BottomNavigationBarItem(icon: Icon(Icons.people_outline),label: 'Contact Nogod'),

       ],),
     body:
     ListView(

       children: [SectionTitle(sectionTitle: 'Services'),
        // SectionIconLayout(totalItem: 7, listImagePath: listImagePathServices),
         SectionIconLayoutTwoRow(totalItem:7,listImagePath:listImagePathServices),
         SectionTitle(sectionTitle: 'Payments'),
         SectionIconLayout(totalItem: 4, listImagePath: listImagePathPayment),
         SectionTitle(sectionTitle: 'Others'),
         SectionIconLayout(totalItem: 4, listImagePath: listImagePathOthers),
       ],
     )
     /*
     Column(
       children: [SectionTitle(sectionTitle: 'Services'),
         //SectionIconLayout(totalItem: 7, listImagePath: listImagePathServices),
         SectionIconLayoutTwoRow(totalItem:7,listImagePath:listImagePathServices),
        SectionTitle(sectionTitle: 'Payments'),
         SectionIconLayout(totalItem: 4, listImagePath: listImagePathPayment),
             SectionTitle(sectionTitle: 'Others'),
         SectionIconLayout(totalItem: 4, listImagePath: listImagePathOthers),
       ],
     )
          // Image.asset('sendMoney.png'),SizedBox(width: 50,),Image.asset('cashOut.png'),SizedBox(width: 50,),Image.asset('mobileRecharge.png'),SizedBox(width: 50,),Image.asset('addMoney.png'),)
*/

     ) ;

  }

}