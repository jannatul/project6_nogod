
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
List <String> mylistImage=['sendMoney.png','cashOut.png','mobileRecharge.png','addMoney.png','transferMoney.png',
  'merchantPay.png','mela.png','insurance.png','billPay.png','emiPay.png','img_10.png','img_11.png','img_12.png','img_16.png','img_17.png','img_18.png',];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(leading:Image.asset('img_1.png'),title: Text('নগদ, ডাক বিভাগের ডিজিটাল লেনদেন',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white) ,) ,backgroundColor: Colors.deepOrangeAccent,),
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.orangeAccent,
       items: [
         BottomNavigationBarItem(icon: Image.asset('img_1.png'), label: 'Home'),
         BottomNavigationBarItem(icon: Icon(Icons.table_rows_outlined),label: 'Transaction'),
         BottomNavigationBarItem(icon: Icon(Icons.people_outline),label: 'Contact Nogod'),

       ],),
     body:
      GridView.builder(
          physics: NeverScrollableScrollPhysics(),
             itemCount: 14,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
             // itemBuilder- it is a function and it returns a widget-- Widget? Function(BuildContext, int)
             itemBuilder: (context, index){
               return Padding(
                   padding: EdgeInsets.all(7),
                 child: Image.asset(mylistImage[index]) ,
               );}
         )
          // Image.asset('sendMoney.png'),SizedBox(width: 50,),Image.asset('cashOut.png'),SizedBox(width: 50,),Image.asset('mobileRecharge.png'),SizedBox(width: 50,),Image.asset('addMoney.png'),)


     ) ;

  }

}