import 'package:flutter/material.dart';
import 'package:hoa12_dulich/Manhinh/homeScreen.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.45,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Image.asset(
                  "assets/quangbinh.jpg",
                  height: size.height * 0.45,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chào mừng bạn đến với Du lịch Quảng Bình",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Quảng Bình - mảnh đất giàu tiềm năng du lịch, là vùng đất tập trung nhiều thắng cảnh nổi tiếng trong và ngoài nước. Quảng Bình có hệ thống hang động vô cùng đặc sắc, nơi đây hấp dẫn bởi vẻ đẹp kỳ thú của núi non, sông nước và biển đảo. Đặc biệt “Vương quốc hang động” Phong Nha - Kẻ Bàng hùng vĩ, tráng lệ, là di sản thiên nhiên thế giới được UNESCO công nhận.Quảng Bình hội tụ các di tích văn hoá lịch sử có giá trị hấp dẫn phát triển du lịch, là quê hương của nhiều anh hùng hào kiệt, danh nhân lịch sử, trong đó có Đại tướng Võ Nguyên Giáp - vị tướng huyền thoại của dân tộc Việt Nam."
                        "Du lịch Quảng Bình liên tiếp được các tạp chí du lịch uy tín trong nước và thế giới vinh danh: xếp thứ 7 cả nước về chỉ số năng lực cạnh tranh du lịch Việt Nam (VTCI) 2021; Vườn Quốc gia Phong Nha - Kẻ Bàng là 1 trong 39 điểm đến của năm 2022 (theo AFAR, Mỹ); Phong Nha - Kẻ Bàng “trái tim du lịch” Quảng Bình tiếp tục là 1 trong 10 vườn quốc gia được yêu thích nhất châu Á và thế giới; hang Sơn Đoòng là 1 trong 7 kỳ quan thế giới năm 2022 (theo CNN Traveller, Anh). Đây là tiềm năng, lợi thế để phát triển ngành du lịch Quảng Bình, để Quảng Bình khẳng định thương hiệu: điểm đến an toàn, hấp dẫn và khác biệt.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.lightBlue,
                      ),
                      width: 150,
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Đi nào!",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              "assets/arrow.png",
                              fit: BoxFit.scaleDown,
                              height: 18,
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}