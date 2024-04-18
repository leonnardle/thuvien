import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:thuctap/components/navbar.dart';
import 'package:thuctap/components/textfield.dart';
import 'package:thuctap/components/button.dart';

class AddAuthor extends StatelessWidget {
   AddAuthor({super.key});

  //controller
  final TextEditingController nameauthorController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController storyController = TextEditingController();
 

  //butonadd
  void addEm(){

  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
          title: Text('Thêm Thông Tin Tác Giả'),
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
              'Thêm Thông Tin Tác Giả',
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
                  Text('Tên Tác Giả' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: nameauthorController, hintText: 'Tên Tác Giả', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Quê Quán', style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: countryController, hintText: 'Quê Quán', obScureText: false),
                  Text('Thể Loại Truyện', style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: storyController, hintText: 'Thể Loại Truyện', obScureText: false),
                  const SizedBox(height: 20),
                      MyButton(
              onTap: addEm,
              text: 'Thêm Thông Tin Tác Giả',
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