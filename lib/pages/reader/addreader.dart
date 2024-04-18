import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:thuctap/components/navbar.dart';
import 'package:thuctap/components/textfield.dart';
import 'package:thuctap/components/button.dart';

class AddReader extends StatelessWidget {
   AddReader({super.key});

  //controller
  final TextEditingController nameReaderController = TextEditingController();
  final TextEditingController emailReaderController = TextEditingController();
  final TextEditingController phoneReaderController = TextEditingController();
  final TextEditingController loanReaderController = TextEditingController();
  //butonadd
  void adddocgia(){

  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
          title: Text('Thêm Đọc Giả'),
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
              'Thêm Đọc Giả',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
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
            width: 50,
            height: 50,
            ),
          ), 
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20), 
              ),
              
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tên Đọc Giả' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: nameReaderController, hintText: 'Tên Nhà Xuất bản', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Email' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: emailReaderController, hintText: 'Tên Khu Vực', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Số Điện Thoại' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: phoneReaderController, hintText: 'Tên Khu Vực', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Phiếu Mượn' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: loanReaderController, hintText: 'Tên Khu Vực', obScureText: false),
                  const SizedBox(height: 10),
                      MyButton(
              onTap: adddocgia,
              text: 'Thêm Đọc Giả',
            )             
                ],
              ),
            ),
          ), 
          ], 
      ),
      );
  }
}