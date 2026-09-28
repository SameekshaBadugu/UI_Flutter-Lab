import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const UserPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class UserPage extends StatefulWidget {
  const UserPage({super.key});
  @override
  State<UserPage> createState() => _UserPageState();
}
class _UserPageState extends State<UserPage> {
  List users = [];
  Future<void> fetchUsers() async {
    final response = await http.get( // asks the server for data.
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    if (response.statusCode == 200) { 
      setState(() {
        users = jsonDecode(response.body); 
      });
    }
  }
  @override
  void initState() {
    super.initState();
    fetchUsers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users - 24WH1A05C5'),
      ),
      body: ListView.builder( // to display multiple users.
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]['name']),
            subtitle: Text(users[index]['email']),
          );
        },
      ),
    );
  }
}