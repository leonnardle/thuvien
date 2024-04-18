import 'package:flutter/material.dart';
import 'package:thuctap/components/navbar.dart';

class ListEmployee extends StatelessWidget {
  const ListEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Danh Sách Nhân Viên'),
      ),
      body: Stack(
        children: [
          Image.asset(
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
              'Danh Sách Nhân Viên',
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
          Positioned.fill(
            top: 50,
            child: ListView.builder(
              itemCount: 10, // Số lượng nhân viên trong danh sách
              itemBuilder: (context, index) {
                // Thay thế dữ liệu giả mạo bằng thông tin thực của nhân viên
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                    title: Text('Nhân viên ${index + 1}'),
                    subtitle: Text('Thông tin chi tiết về nhân viên ${index + 1}'),
                    onTap: () {
                      // Xử lý sự kiện khi nhấn vào một nhân viên trong danh sách
                      print('Tapped on employee $index');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}