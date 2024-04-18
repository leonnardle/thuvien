import 'package:flutter/material.dart';
import 'package:thuctap/components/navbar.dart';

import '../../model/book.dart';

class ListBook extends StatelessWidget {
  final List<Book>? items;

  ListBook({Key? key, this.items}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Danh Sách Sách'),
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
              'Danh Sách Sách',
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
              itemCount: items?.length, // Số lượng nhân viên trong danh sách
              itemBuilder: (context, index) {
                // lấy thông tin sách
                final book=items?[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                    title: Text('Sách ${book?.name}'),
                    subtitle: Text('Sách ${book?.author}'),
                    onTap: () {
                      // Xử lý sự kiện khi nhấn vào một nhân viên trong danh sách
                      print('Tapped on employee ${book?.name}');
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