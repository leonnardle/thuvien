import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:thuctap/components/navbar.dart';
import 'package:thuctap/components/textfield.dart';
import 'package:thuctap/components/button.dart';

class AddBook extends StatelessWidget {
   AddBook({super.key});

  //controller
  final TextEditingController namesachController = TextEditingController();
  final TextEditingController authorController = TextEditingController();
  final TextEditingController publisherController = TextEditingController();
  final TextEditingController genreController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  //butonadd
  void addsach(){

  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
          title: Text('Thêm Sách'),
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
              'Thêm Sách',
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
                  Text('Tên Sách' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: namesachController, hintText: 'Tên Sách', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Nhà Xuất Bản' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: publisherController, hintText: 'Nhà Xuất Bản', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Tác Giả' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: authorController, hintText: 'Tác Giả', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Thể Loại' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: genreController, hintText: 'Thể Loại', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Chi Tiết' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: descriptionController, hintText: 'Chi Tiết', obScureText: false),
                  const SizedBox(height: 10),
                      MyButton(
              onTap: addsach,
              text: 'Thêm Sách',
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