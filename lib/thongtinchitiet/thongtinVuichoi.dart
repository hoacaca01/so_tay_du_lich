import 'package:flutter/material.dart';
import 'package:hoa12_dulich/Manhinh/chatScreen.dart';
import 'package:hoa12_dulich/Manhinh/homeScreen.dart';
import 'package:hoa12_dulich/Manhinh/profileScreen.dart';
import 'package:hoa12_dulich/Manhinh/settingScreen.dart';
import 'package:hoa12_dulich/Manhinh/themlichtrinhScreen.dart';

class ThongtinVuichoi extends StatefulWidget {
  final String image;
  final String location;
  final String date;
  final String introduction;
  final String address;
  final String vitrimap;

  const ThongtinVuichoi({super.key, required this.image, required this.location, required this.date, required this.introduction, required this.address, required this.vitrimap});
  @override
  State<ThongtinVuichoi> createState() => _ThongtinVuichoiState();
}

class _ThongtinVuichoiState extends State<ThongtinVuichoi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _headerWidget(),
            _bodyContent(),
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

  Widget _headerWidget() {
    return Stack(
      children: <Widget>[
        Container(
          height: 180,
          child: Image.asset("assets/cover.png"),
        ),
        Container(
            margin: EdgeInsets.only(top: 35,right: 10,left: 12),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Thông Tin Vui Chơi Chi Tiết",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    InkWell(onTap: (){
                      Navigator.pop(context);
                    },child: Icon(Icons.arrow_back))
                  ],
                ),
                SizedBox(height: 35,),
                Text(widget.address, style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                ),)
              ],
            )
        ),
      ],
    );
  }

  Widget _bodyContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10,),
          Container(
            height: 160,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15),
              ),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10,),
          // Text("(Nguồn trích dẫn: ${widget.location} Explorer)")
          Text("(Nguồn trích dẫn: Phong Nha Explorer)",
            style: TextStyle(
              fontSize: 16,
              color:  Colors.cyan,
            ),
          ),
          SizedBox(height: 5,),
          Text("Xuân Hòa: ${widget.date}",
            style: TextStyle(
              color: Colors.black.withOpacity(.6),
            ),
          ),
          SizedBox(height: 7,),
          Text("${widget.introduction}",
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
            ),
          ),
          SizedBox(height: 10,),
          Text("Địa Chỉ: ${widget.address}",
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
            ),
          ),
          SizedBox(height: 10,),
          Text("${widget.vitrimap}",
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
            ),
          ),
          // Container(
          //   height: 30,
          //   width: 80,
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //       color: Colors.black.withOpacity(.3)
          //   ),
          //   child: Text('Đọc tiếp..',
          //     style: TextStyle(
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}