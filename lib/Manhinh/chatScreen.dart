import 'package:flutter/material.dart';
import 'package:hoa12_dulich/Manhinh/homeScreen.dart';
import 'package:hoa12_dulich/Manhinh/profileScreen.dart';
import 'package:hoa12_dulich/Manhinh/settingScreen.dart';
import 'package:hoa12_dulich/Manhinh/themlichtrinhScreen.dart';
import 'package:hoa12_dulich/kho/kholuutru.dart';
import 'package:intl/intl.dart';

class Chat extends StatelessWidget {
  final _danhSachLichTrinh = Kholuutru.danhSachLichTrinh;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh Sách Lịch Trình'),
      ),
      body: ListView.builder(
        itemCount: _danhSachLichTrinh.length,
        itemBuilder: (context, index) {
          final lichTrinh = _danhSachLichTrinh[index];
          return Card(
            elevation: 10.0,
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(
                lichTrinh.image,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(lichTrinh.tenLichTrinh),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lichTrinh.diaDiem),
                  Text("Ngày: ${DateFormat('yyyy-MM-dd').format(lichTrinh.ngay)}")
                  // Text("Ngày: ${lichTrinh.ngay.toLocal()}".split(' ')[0]),
                ],
              ),
              onTap: () {
                // Xử lý khi người dùng chọn một lịch trình
                // Ví dụ: Chuyển sang trang chi tiết lịch trình
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ChiTietLichTrinhScreen(lichTrinh),
                //   ),
                // );
              },
            ),
          );
        },
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