// import 'package:flutter/material.dart';
// import 'package:hoa12_dulich/models/lichtrinh_model.dart';
//
// class DanhSachLichTrinhScreen extends StatelessWidget {
//   final List<LichTrinh> danhSachLichTrinh;
//
//   DanhSachLichTrinhScreen(this.danhSachLichTrinh);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Danh Sách Lịch Trình'),
//       ),
//       body: ListView.builder(
//         itemCount: danhSachLichTrinh.length,
//         itemBuilder: (context, index) {
//           final lichTrinh = danhSachLichTrinh[index];
//           return ListTile(
//             title: Text(lichTrinh.tenLichTrinh),
//             subtitle: Text(lichTrinh.diaDiem),
//             trailing: Text(lichTrinh.ngay.toString()), // Hiển thị ngày
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hoa12_dulich/kho/kholuutru.dart';
import 'package:intl/intl.dart';

class DanhSachLichTrinhScreen extends StatelessWidget {
  final _danhSachLichTrinh = Kholuutru.danhSachLichTrinh;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh Sách Lịch Trình"),
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
    );
  }
}
