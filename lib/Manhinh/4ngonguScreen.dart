import 'package:flutter/material.dart';

// class LanguageSelectionScreen extends StatefulWidget {
//   @override
//   _LanguageSelectionScreenState createState() =>
//       _LanguageSelectionScreenState();
// }
//
// class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
//   String selectedLanguage = 'Tiếng Việt';
//
//   void _selectLanguage(String language) {
//     setState(() {
//       selectedLanguage = language;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chọn ngôn ngữ'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text('Tiếng Việt'),
//             trailing: selectedLanguage == 'Tiếng Việt'
//                 ? Icon(Icons.check)
//                 : null,
//             onTap: () {
//               _selectLanguage('Tiếng Việt');
//             },
//           ),
//           ListTile(
//             title: Text('English'),
//             trailing: selectedLanguage == 'English' ? Icon(Icons.check) : null,
//             onTap: () {
//               _selectLanguage('English');
//             },
//           ),
//           ListTile(
//             title: Text('中文'),
//             trailing: selectedLanguage == '中文' ? Icon(Icons.check) : null,
//             onTap: () {
//               _selectLanguage('中文');
//             },
//           ),
//           ListTile(
//             title: Text('ไทย'),
//             trailing: selectedLanguage == 'ไทย' ? Icon(Icons.check) : null,
//             onTap: () {
//               _selectLanguage('ไทย');
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String selectedLanguage = 'Tiếng Việt';

  void _selectLanguage(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  void _saveLanguage() {
    // Ở đây, bạn có thể lưu ngôn ngữ đã chọn vào cài đặt ứng dụng hoặc thực hiện các xử lý liên quan đến việc lựa chọn ngôn ngữ.
    // Đối với mục đích minh họa, chúng ta chỉ in ngôn ngữ đã chọn.
    print('Ngôn ngữ đã chọn: $selectedLanguage');
    // Sau khi lưu, bạn có thể quay lại màn hình trước đó hoặc làm bất kỳ điều gì khác.
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn ngôn ngữ'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Tiếng Việt'),
            trailing: selectedLanguage == 'Tiếng Việt'
                ? Icon(Icons.check)
                : null,
            onTap: () {
              _selectLanguage('Tiếng Việt');
            },
          ),
          ListTile(
            title: Text('English'),
            trailing: selectedLanguage == 'English' ? Icon(Icons.check) : null,
            onTap: () {
              _selectLanguage('English');
            },
          ),
          ListTile(
            title: Text('中文'),
            trailing: selectedLanguage == '中文' ? Icon(Icons.check) : null,
            onTap: () {
              _selectLanguage('中文');
            },
          ),
          ListTile(
            title: Text('ไทย'),
            trailing: selectedLanguage == 'ไทย' ? Icon(Icons.check) : null,
            onTap: () {
              _selectLanguage('ไทย');
            },
          ),
          ListTile(
            title: Text('Lưu'),
            onTap: () {
              // Lưu ngôn ngữ đã chọn
              _saveLanguage();
            },
          ),
        ],
      ),
    );
  }
}