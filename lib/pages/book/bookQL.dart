import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thuctap/components/elevatedbutton.dart';
import 'package:thuctap/components/navbar.dart';
import 'package:thuctap/model/book.dart';
import 'package:thuctap/pages/book/booklist.dart';
import 'package:thuctap/pages/book/addBook.dart';

class Book extends StatelessWidget {
  const Book({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
          title: Text('Quản Lý Sách'),
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
              'Quản Lý Sách',
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
                    builder: (context) => AddBook()));
                    },
                    text: 'Thêm Sách',
                    ),
                    const SizedBox(height: 50,),
                    CustomElevatedButton(onPressed: () async {
                     final books = await fetchBooks();

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ListBook(items: books,),
                        ));
                    }, text: 'Quản Lý Sách')
                  ],
                ),
              ),
            )
            
          ],
      ),
      );
  }
}