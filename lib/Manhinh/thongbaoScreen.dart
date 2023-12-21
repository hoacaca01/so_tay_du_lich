//
// import 'package:flutter/material.dart';
// import 'package:hoa12_dulich/Manhinh/chatScreen.dart';
// import 'package:hoa12_dulich/Manhinh/homeScreen.dart';
// import 'package:hoa12_dulich/Manhinh/profileScreen.dart';
// import 'package:hoa12_dulich/Manhinh/settingScreen.dart';
// import 'package:hoa12_dulich/Manhinh/themlichtrinhScreen.dart';
//
// class Thongbao extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           "Màn hình Thông báo\n"+"Làm tiếp vào",
//           style: TextStyle(
//             fontSize: 40,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         height: 35,
//         width: double.infinity,
//         margin: EdgeInsets.all(10),
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(50),
//             color: Colors.white
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (_) => HomeScreen(),
//                 ),);
//               },
//               icon:
//               Icon(Icons.home),
//             ),
//             IconButton(
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (_) => Chat(),
//                 ),);
//               },
//               icon: Icon(Icons.chat),),
//             IconButton(
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (_) => Themlichtrinh(),
//                 ),);
//               },
//               icon: Icon(Icons.add_box),),
//             IconButton(
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (_) => Profile(),
//                 ),);
//               },
//               icon: Icon(Icons.account_box),),
//             IconButton(
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (_) => Setting(),
//                 ),);
//               },
//               icon: Icon(Icons.settings),),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hoa12_dulich/Manhinh/chatScreen.dart';
import 'package:hoa12_dulich/Manhinh/homeScreen.dart';
import 'package:hoa12_dulich/Manhinh/profileScreen.dart';
import 'package:hoa12_dulich/Manhinh/settingScreen.dart';
import 'package:hoa12_dulich/Manhinh/themlichtrinhScreen.dart';

// Mô hình dữ liệu cho thông báo
class NotificationItem {
  final String title;
  final String message;

  NotificationItem({required this.title, required this.message});
}

class Thongbao extends StatefulWidget {
  @override
  _ThongbaoState createState() => _ThongbaoState();
}

class _ThongbaoState extends State<Thongbao> {
  List<NotificationItem> notifications = []; // Danh sách thông báo

  // @override
  // void initState() {
  //   super.initState();
  //
  //   // Thêm các thông báo mẫu vào danh sách
  //   notifications.add(
  //     NotificationItem(
  //       title: "Thông báo 1",
  //       message: "Bạn vừa thêm một lịch trình mới",
  //     ),
  //   );
  //   notifications.add(
  //     NotificationItem(
  //       title: "Thông báo 2",
  //       message: "Bạn vừa thêm một lịch trình mới",
  //     ),
  //   );
  //   // Thêm nhiều thông báo khác nếu cần
  // }
  // Hàm để thêm thông báo mới
  void addNotification(NotificationItem notification) {
    setState(() {
      notifications.add(notification);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông báo"),
      ),
      body: notifications.isEmpty
          ? Center(
        child: Text(
          "Không có thông báo nào.",
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notifications[index].title),
            subtitle: Text(notifications[index].message),
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
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                  ),
                );
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Chat(),
                  ),
                );
              },
              icon: Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Themlichtrinh(),
                  ),
                );
              },
              icon: Icon(Icons.add_box),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Profile(),
                  ),
                );
              },
              icon: Icon(Icons.account_box),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Setting(),
                  ),
                );
              },
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
