
import 'package:flutter/material.dart';
import 'package:hoa12_dulich/Manhinh/chatScreen.dart';
import 'package:hoa12_dulich/Manhinh/homeScreen.dart';
import 'package:hoa12_dulich/Manhinh/profileScreen.dart';
import 'package:hoa12_dulich/Manhinh/settingScreen.dart';
import 'package:hoa12_dulich/models/lichtrinh_model.dart';

class Themlichtrinh extends StatefulWidget {

  @override
  State<Themlichtrinh> createState() => _ThemlichtrinhState();
}

class _ThemlichtrinhState extends State<Themlichtrinh> {
  TextEditingController _scheduleNameController = TextEditingController();
  TextEditingController _scheduleDescriptionController = TextEditingController();
  TextEditingController _locationController = TextEditingController();

  DateTime _selectedDate = DateTime.now();

  // Hàm để hiển thị date picker và cập nhật giá trị ngày được chọn
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime picked = await showDatePicker(
  //     context: context,
  //     initialDate: _selectedDate,
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2101),
  //   );
  //   if (picked != null && picked != _selectedDate)
  //     setState(() {
  //       _selectedDate = picked;
  //     });
  // }

  @override
  void dispose() {
    _scheduleNameController.dispose();
    _scheduleDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thêm Lịch Trình"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tên Lịch Trình:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _scheduleNameController,
                decoration: InputDecoration(
                  hintText: "Nhập tên lịch trình",
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "Mô tả:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _scheduleDescriptionController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Nhập mô tả lịch trình",
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "Địa Điểm:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              // TextField(
              //   controller: _locationController,
              //   decoration: InputDecoration(
              //     hintText: "Động Phong Nha",
              //   ),
              // ),
              Row(
                children: [
                  Text(
                    ".................",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () async {
                      // Mở trang chọn địa điểm và nhận địa điểm được chọn từ đó
                      // final selectedLocation = await Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ChonDiaDiemScreen(),
                      //   ),
                      // );
                      //
                      // if (selectedLocation != null) {
                      //   setState(() {
                      //     _locationController.text = selectedLocation;
                      //   });
                      // }
                    },
                    child: Text('Chọn Địa Điểm'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                "Ngày:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "${_selectedDate.toLocal()}".split(' ')[0],
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    // onPressed: () => _selectDate(context),
                    onPressed: (){},
                    child: Text('Chọn Ngày'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Thực hiện xử lý thêm lịch trình ở đây
                  // final scheduleName = _scheduleNameController.text;
                  // final scheduleDescription = _scheduleDescriptionController.text;
                  // final selectedDate = _selectedDate;

                  // Đoạn mã xử lý thêm lịch trình vào hệ thống của bạn
                  // Ví dụ: Lưu vào cơ sở dữ liệu hoặc thực hiện tương tác mạng

                  // Sau khi thêm lịch trình, bạn có thể điều hướng trở lại màn hình chính hoặc trang khác.
                  // final scheduleName = _scheduleNameController.text;
                  // final scheduleDescription = _scheduleDescriptionController.text;
                  // final selectedLocation = _locationController.text;
                  // List<LichTrinh> danhSachLichTrinh = [];
                  //
                  // danhSachLichTrinh.add(
                  //   LichTrinh(
                  //     tenLichTrinh: scheduleName,
                  //     moTa: scheduleDescription,
                  //     diaDiem: selectedLocation,
                  //     ngay: _selectedDate,
                  //   ),
                  // );
                  Navigator.pop(context); // Đóng trang thêm lịch trình
                },
                child: Text('Thêm Lịch Trình'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 35,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
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