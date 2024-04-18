import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thuctap/components/elevatedbutton.dart';
import 'package:thuctap/components/navbar.dart';
import 'package:thuctap/pages/booktype/addbooktype.dart';
import 'package:thuctap/pages/booktype/booktypelist.dart';
import 'package:thuctap/pages/borrowbook/addborrowbook.dart';
import 'package:thuctap/pages/borrowbook/borrowbooklist.dart';


class BorrowBook extends StatelessWidget {
  const BorrowBook({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
          title: Text('Quản Lý Sách Mượn'),
      ),
      body: Stack( 
        children:[ Image.asset(
          'images/31.png',
          fit: BoxFit.cover,
          width: double.infinity, 
          height: double.infinity,
          ),
          Positioned(
            top: 20, // Độ dời vị trí lên phía trên (20 pixels)
            left: 0, 
            right: 0, 
            child:Center(
            child: Text(
              'Quản Lý Sách Mượn',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.yellow[700],
                ),
            ),
            ),
          ),
          Positioned(
            top: 0, // Độ dời vị trí lên phía trên (20 pixels)
            left: 938, 
            right: 0, 
           child: Image.asset(
            'images/logo.png',
            width: 100,
            height: 100,
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CustomElevatedButton(
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) => AddBorrowBook()));
                    },
                    text: 'Thêm Sách Mượn',
                    ),
                    const SizedBox(height: 50,),
                    CustomElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ListBorrowBook(),
                        ));
                    }, text: 'Quản Lý Sách Mượn')
                  ],
                ),
              ),
            )
            
          ],
      ),
      );
  }
}