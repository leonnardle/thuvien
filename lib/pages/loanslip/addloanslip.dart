import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:thuctap/components/navbar.dart';
import 'package:thuctap/components/textfield.dart';
import 'package:thuctap/components/button.dart';

class AddLoanSlip extends StatelessWidget {
   AddLoanSlip({super.key});

  //controller
  final TextEditingController readerNameController = TextEditingController();
  final TextEditingController IDBookController = TextEditingController();
  final TextEditingController StatusController = TextEditingController();
  final TextEditingController LoanDayController = TextEditingController();
  final TextEditingController PaymentDayController = TextEditingController();
  
  //butonadd
  void addphieumuon(){

  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
          title: Text('Thêm Phiếu Mượn'),
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
              'Thêm Phiếu Mượn',
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
                  MyTextField(controller: readerNameController, hintText: 'Tên Nhà Xuất bản', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Mã Sách' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: IDBookController, hintText: 'Tên Khu Vực', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Trạng Thái' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: StatusController, hintText: 'Tên Khu Vực', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Ngày Mượn' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: LoanDayController, hintText: 'Tên Khu Vực', obScureText: false),
                  const SizedBox(height: 10),
                  Text('Ngày Trả' , style: TextStyle(fontWeight: FontWeight.bold)),
                  MyTextField(controller: PaymentDayController, hintText: 'Tên Khu Vực', obScureText: false),
                  const SizedBox(height: 10),
                      MyButton(
              onTap: addphieumuon,
              text: 'Thêm Phiếu Mượn',
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