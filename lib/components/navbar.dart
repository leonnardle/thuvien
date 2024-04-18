import 'package:flutter/material.dart';
import 'package:thuctap/pages/book/booklist.dart';
import 'package:thuctap/pages/homepage.dart';
import 'package:thuctap/pages/author/authorQL.dart';
import 'package:thuctap/pages/booktype/booktypeQL.dart';
import 'package:thuctap/pages/employee/employeeQL.dart';
import 'package:thuctap/pages/publisher/publisherQL.dart';
import 'package:thuctap/pages/book/bookQL.dart';
import 'package:thuctap/pages/reader/readerQL.dart';
import 'package:thuctap/pages/loanslip/loanslipQL.dart';
import 'package:thuctap/pages/paymentslip/paymentslipQL.dart';
import 'package:thuctap/pages/borrowbook/borrowbookQL.dart';

import '../model/book.dart';

class NavBar extends StatelessWidget {
  final String? name;

  // Constructor mới với một tham số có thể null
  const NavBar({this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('',
              style: TextStyle(
                color: Colors.black
              ),
              ),
              accountEmail: Text('',
               style: TextStyle(
                color: Colors.black
              ),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'images/logo.png',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage('images/31.png'),
                    fit: BoxFit.cover,
                    ),
                    
                ),
              ),
          ListTile(
            title: Text('Quản Lý Nhân Viên'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => Employee()
                  )
              );
            },
          ),
          ListTile(
            title: Text('Quản Lý Loại Sách'),
            onTap: ()=> {
               Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => BookType()
                  )
              )
            },
          ),
          ListTile(
            title: Text('Quản Lý Nhà Xuất Bản'),
            onTap: ()=> {
               Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => Publisher()
                  )
              )
            },
          ),
          ListTile(
            title: Text('Quản Lý Tác Giả'),
           onTap: ()=> {
               Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => Author()
                  )
              )
            },
          ),
          ListTile(
            title: Text('Quản Lý Thông Tin Sách'),
            onTap: () async {
              final books = await fetchBooks();
               Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => ListBook(items: books,)
                  )
              );
            },
          ),
          ListTile(
            title: Text('Quản Lý Sách Mượn'),
            onTap: ()=> {
               Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => BorrowBook()
                  )
              )
            },
          ),
          ListTile(
            title: Text('Quản Lý Đọc Giả'),
          onTap: ()=> {
               Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => Reader()
                  )
              )
            },
          ),
          ListTile(
            title: Text('Quản Lý Phiếu Mượn'),
           onTap: ()=> {
               Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => LoanSlip()
                  )
              )
            },
          ),
          ListTile(
            title: Text('Quản Lý Phiếu Trả'),
             onTap: ()=> {
               Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => PaymentSlip()
                  )
              )
            },
          ),
          ],
        ),
    );
  }
}