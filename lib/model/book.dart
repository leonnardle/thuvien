import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:thuctap/utils.dart';
class Book {
  final String id;
  final String name;
  final String author;
  final String publisher;
  final String genre;
  final String description;
  final int quantity;

  Book(
    this.id,
     this.name,
     this.author,
     this.publisher,
     this.genre,
     this.description,
     this.quantity
  );
  factory Book.fromJson(Map<String,dynamic> data){
    return Book(
        data['masach'],
        data['tensach'],
        data['tacgia'],
        data['nhaxuatban'],
        data['theloai'],
        data['mota'],
        data['soluong']);
  }
}
List<Book> parseBooks(String responseBody) {
  final parsed = json.decode(responseBody)['data'] as List<dynamic>;
  return parsed.map<Book>((json) => Book.fromJson(json)).toList();
}


Future<List<Book>> fetchBooks() async{
  final response=await http.get(Uri.parse('${Utils.baseUrl}/sach'));
  print(response.body);
  if(response.statusCode==200){
    return parseBooks(response.body);
  }else{
    throw Exception('unable connect to api');
  }
}