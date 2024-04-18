import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:thuctap/components/navbar.dart';
import 'package:thuctap/components/textfield.dart';
import 'package:thuctap/components/button.dart';

class AddEmployee extends StatelessWidget {
   AddEmployee({super.key});

  //controller
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  //butonadd
  void addEm(){

  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
          title: Text('Thêm Nhân Viên'),
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
              'Thêm Nhân Viên',
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
                  Text('Tên Nhân Viên' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: nameController, hintText: 'Tên Nhân Viên', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Mật Khẩu', style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: passController, hintText: 'Mật Khẩu', obScureText: false),
                  Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: emailController, hintText: 'Email', obScureText: false),
                  Text('Lương', style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: salaryController, hintText: 'Lương', obScureText: false),
                  Text('Số Điện Thoại', style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: phoneController, hintText: 'Số Điện Thoại', obScureText: false),
                  const SizedBox(height: 10),
                      MyButton(
              onTap: addEm,
              text: 'Thêm Nhân Viên',
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