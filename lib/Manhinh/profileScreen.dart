//
// import 'package:flutter/material.dart';
// import 'package:hoa12_dulich/Manhinh/chatScreen.dart';
// import 'package:hoa12_dulich/Manhinh/homeScreen.dart';
// import 'package:hoa12_dulich/Manhinh/settingScreen.dart';
// import 'package:hoa12_dulich/Manhinh/themlichtrinhScreen.dart';
//
// class Profile extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Thông tin cá nhân'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               radius: 50.0,
//               backgroundImage: AssetImage('assets/anhavatar.jpg'),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Họ và Tên: Phạm Xuân Hòa',
//               style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Email: tieucaca876@gmail.com',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Số điện thoại: 0762169854',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(height: 16.0),
//             // Thêm các thông tin cá nhân khác ở đây
//           ],
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
import 'package:hoa12_dulich/Manhinh/settingScreen.dart';
import 'package:hoa12_dulich/Manhinh/themlichtrinhScreen.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = 'Phạm Xuân Hòa';
  String email = 'tieucaca876@gmail.com';
  String phoneNumber = '0762169854';

  // Hàm để mở màn hình chỉnh sửa thông tin cá nhân
  void _openEditProfileScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return EditProfile(
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        onUpdate: (newName, newEmail, newPhoneNumber) {
          setState(() {
            name = newName;
            email = newEmail;
            phoneNumber = newPhoneNumber;
          });
        },
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin cá nhân'),
        actions: [
          IconButton(
            onPressed: _openEditProfileScreen,
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/anhavatar.jpg'),
              ),
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text(
                'Họ và Tên',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                name,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            ListTile(
              title: Text(
                'Email',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                email,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            ListTile(
              title: Text(
                'Số điện thoại',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                phoneNumber,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            // Thêm các thông tin cá nhân khác ở đây
          ],
        ),
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

class EditProfile extends StatefulWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final Function(String, String, String) onUpdate;

  EditProfile({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.onUpdate,
  });

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.name);
    emailController = TextEditingController(text: widget.email);
    phoneNumberController = TextEditingController(text: widget.phoneNumber);
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chỉnh sửa thông tin cá nhân'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Họ và Tên'),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: phoneNumberController,
              decoration: InputDecoration(labelText: 'Số điện thoại'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                widget.onUpdate(
                  nameController.text,
                  emailController.text,
                  phoneNumberController.text,
                );
                Navigator.pop(context); // Quay lại màn hình trước
              },
              child: Text('Lưu thông tin'),
            ),
          ],
        ),
      ),
    );
  }
}
