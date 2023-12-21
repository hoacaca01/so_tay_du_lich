
import 'package:flutter/material.dart';
import 'package:hoa12_dulich/Manhinh/4ngonguScreen.dart';
import 'package:hoa12_dulich/Manhinh/chatScreen.dart';
import 'package:hoa12_dulich/Manhinh/homeScreen.dart';
import 'package:hoa12_dulich/Manhinh/loginScreen.dart';
import 'package:hoa12_dulich/Manhinh/profileScreen.dart';
import 'package:hoa12_dulich/Manhinh/registerScreen.dart';
import 'package:hoa12_dulich/Manhinh/themlichtrinhScreen.dart';

class Setting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cài đặt'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Đăng Nhập'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
            },
          ),
          ListTile(
            title: Text('Đăng Ký'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => RegisterPage(),
              ));
            },
          ),
          ListTile(
            title: Text('Chọn ngôn ngữ'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Mở màn hình chọn ngôn ngữ
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => LanguageSelectionScreen(),
              ));
            },
          ),
          ListTile(
            title: Text('Đăng Xuất'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 35,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => HomeScreen(),
                ),);
              },
              icon:
              Icon(Icons.home),
            ),
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => Chat(),
                ),);
              },
              icon: Icon(Icons.chat),),
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => Themlichtrinh(),
                ),);
              },
              icon: Icon(Icons.add_box),),
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => Profile(),
                ),);
              },
              icon: Icon(Icons.account_box),),
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => Setting(),
                ),);
              },
              icon: Icon(Icons.settings),),
          ],
        ),
      ),
    );
  }

}