
import 'package:flutter/material.dart';
import 'package:project6/home_page_design/data_file.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  List <String> mylistImagePath =createListImagePathServices();
  List <String> listImagePathPayment =   createListImagePathPayment();
  List <String> listImagePathOthers =   createListImagePathOthers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading:Image.asset('assets/img_1.png'),title: Text('নগদ, ডাক বিভাগের ডিজিটাল লেনদেন',style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.white) ,) ,backgroundColor: Colors.deepOrangeAccent,),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.indigoAccent,
          unselectedItemColor: Colors.black87,
          backgroundColor: Colors.orangeAccent,
          items: [
            BottomNavigationBarItem(icon: Image.asset('assets/img_1.png'), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.table_rows_outlined),label: 'Transaction'),
            BottomNavigationBarItem(icon: Icon(Icons.people_outline),label: 'Contact Nogod'),

          ],),
        body:       Column(
          children: [ Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Services ',textAlign: TextAlign.left ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
          ),
            Container(
              width: 400, height: 200,
              child: GridView.builder(
                // physics: NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  // itemBuilder- it is a function and it returns a widget-- Widget? Function(BuildContext, int)
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.all(3),
                      child: Image.asset(mylistImagePath[index],) ,
                    );}
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Payments ',textAlign: TextAlign.left ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
            ),
            Container(
              width: 400, height: 100,
              child: GridView.builder(
                // physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  // itemBuilder- it is a function and it returns a widget-- Widget? Function(BuildContext, int)
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.all(3),
                      child: Image.asset(listImagePathPayment[index],) ,
                    );}
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Others',textAlign: TextAlign.left ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
            ),
            Container(
              width: 400, height: 100,
              child: GridView.builder(
                // physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  // itemBuilder- it is a function and it returns a widget-- Widget? Function(BuildContext, int)
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.all(3),
                      child: Image.asset(listImagePathOthers[index],) ,
                    );}
              ),
            ),
          ],
        )
      // Image.asset('sendMoney.png'),SizedBox(width: 50,),Image.asset('cashOut.png'),SizedBox(width: 50,),Image.asset('mobileRecharge.png'),SizedBox(width: 50,),Image.asset('addMoney.png'),)


    ) ;

  }

}