import 'package:flutter/material.dart';
import 'package:hoa12_dulich/Manhinh/chatScreen.dart';
import 'package:hoa12_dulich/Manhinh/danhsachlichtrinh.dart';
import 'package:hoa12_dulich/Manhinh/profileScreen.dart';
import 'package:hoa12_dulich/Manhinh/settingScreen.dart';
import 'package:hoa12_dulich/Manhinh/themlichtrinhScreen.dart';
import 'package:hoa12_dulich/Manhinh/thongbaoScreen.dart';
import 'package:hoa12_dulich/kho/kholuutru.dart';
import 'package:hoa12_dulich/kho/khothongtinchitietAmthuc.dart';
import 'package:hoa12_dulich/kho/khothongtinchitietDitich.dart';
import 'package:hoa12_dulich/kho/khothongtinchitietSinhthai.dart';
import 'package:hoa12_dulich/kho/khothongtinchitietTamlinh.dart';
import 'package:hoa12_dulich/kho/khothongtinchitietVuichoi.dart';
import 'package:hoa12_dulich/thongtinchitiet/danhmucAmthuc.dart';
import 'package:hoa12_dulich/thongtinchitiet/danhmucDitich.dart';
import 'package:hoa12_dulich/thongtinchitiet/danhmucSinhthai.dart';
import 'package:hoa12_dulich/thongtinchitiet/danhmucTamlinh.dart';
import 'package:hoa12_dulich/thongtinchitiet/danhmucVuichoi.dart';
import 'package:hoa12_dulich/thongtinchitiet/thongtinAmthuc.dart';
import 'package:hoa12_dulich/thongtinchitiet/thongtinDitich.dart';
import 'package:hoa12_dulich/thongtinchitiet/thongtinSinhthai.dart';
import 'package:hoa12_dulich/thongtinchitiet/thongtinTamlinh.dart';
import 'package:hoa12_dulich/thongtinchitiet/thongtinVuichoi.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _seachController = TextEditingController();
  final _Sinhthai = Kholuutru.Sinhthai;
  final _Ditich = Kholuutru.Ditich;
  final _Tamlinh = Kholuutru.Tamlinh;
  final _Amthuc = Kholuutru.Amthuc;
  final _Vuichoi = Kholuutru.Vuichoi;
  final _DanhmucTamlinh = KhothongtinTamlinh.DanhmucTamLinh;
  final _DanhmucSinhthai = Khothongtin.DanhmucSinhthai;
  final _DanhmucVuichoi = KhothongtinVuichoi.DanhmucVuichoi;
  final _DanhmucDitich = KhothongtinDitich.DanhmucDitich;
  final _DanhmucAmthuc = KhothongtinAmthuc.DanhmucAmthuc;
  @override
  void dispose() {
    _seachController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 7, vertical: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              _headerWidget(),
              SizedBox(height: 15, ),
              _seachWidget(),
              SizedBox(height: 15, ),
              // _bodyContent(),
              SizedBox(height: 15, ),
              _sinhthaiWidget(),
              SizedBox(height: 15, ),
              _vuichoiWidget(),
              SizedBox(height: 15, ),
              _ditichWidget(),
              SizedBox(height: 15, ),
              _tamlinhWidget(),
              SizedBox(height: 15, ),
              _amthucWidget(),
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
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(onTap: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => DanhSachLichTrinhScreen(),
          //   ),
          // );
        },child: Image.asset(
          'assets/menu1.png',
          fit: BoxFit.scaleDown,
          height: 35,
          width: 50,
        ),
        ),
        Text("Du Lịch Quảng Bình",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (_) => Thongbao(),
          ),);
        },child: Icon(
          Icons.add_alert,
        ),
        ),
      ],
    );
  }

  Widget _seachWidget() {
    return Container(
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(.2),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: TextField(
        controller: _seachController,
        decoration: InputDecoration(
          hintText: 'Tìm kiếm ...',
          border: InputBorder.none,
          suffixIcon: Icon(Icons.mic),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _sinhthaiWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Du Lịch Sinh Thái",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            InkWell( onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => DanhmucSinhthai(),
              ),);
            },
              child: Text("View All",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.3)
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Container(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _Sinhthai.length,
            itemBuilder: (_, index){
              return InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => ThongtinSinhthai(
                    location: _DanhmucSinhthai[index].location,
                    image: _DanhmucSinhthai[index].image,
                    date: _DanhmucSinhthai[index].date,
                    introduction: _DanhmucSinhthai[index].introduction,
                    address: _DanhmucSinhthai[index].address,
                    vitrimap: _DanhmucSinhthai[index].vitrimap,
                  ),
                ),);
              },
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 160,
                            height: 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                _Sinhthai[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8
                              ),
                              child: Text(
                                "${_Sinhthai[index].caption}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(.4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "${_Sinhthai[index].name}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _ditichWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Di Tích - Lịch Sử",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            InkWell( onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => DanhmucDitich(),
              ),);
            },
              child: Text("View All",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.3)
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Container(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _Ditich.length,
            itemBuilder: (_, index){
              return InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => ThongtinDitich(
                    location: _DanhmucDitich[index].location,
                    image: _DanhmucDitich[index].image,
                    date: _DanhmucDitich[index].date,
                    introduction: _DanhmucDitich[index].introduction,
                    address: _DanhmucDitich[index].address,
                    vitrimap: _DanhmucDitich[index].vitrimap,
                  ),
                ),);
              },
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 160,
                            height: 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                _Ditich[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8
                              ),
                              child: Text(
                                "${_Ditich[index].caption}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(.4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "${_Ditich[index].name}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _tamlinhWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Du Lịch Tâm Linh",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            InkWell( onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => DanhmucTamlinh(),
              ),);
            },
              child: Text("View All",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.3)
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Container(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _Tamlinh.length,
            itemBuilder: (_, index){
              return InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => ThongtinTamlinh(
                    location: _DanhmucTamlinh[index].location,
                    image: _DanhmucTamlinh[index].image,
                    date: _DanhmucTamlinh[index].date,
                    introduction: _DanhmucTamlinh[index].introduction,
                    address: _DanhmucTamlinh[index].address,
                    vitrimap: _DanhmucTamlinh[index].vitrimap,
                  ),
                ),);
              },
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 160,
                            height: 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                _Tamlinh[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8
                              ),
                              child: Text(
                                "${_Tamlinh[index].caption}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(.4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "${_Tamlinh[index].name}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _amthucWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Ẩm Thực ",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            InkWell( onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => DanhmucAmthuc(),
              ),);
            },
              child: Text("View All",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.3)
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Container(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _Amthuc.length,
            itemBuilder: (_, index){
              return InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => ThongtinAmthuc(
                    location: _DanhmucAmthuc[index].location,
                    image: _DanhmucAmthuc[index].image,
                    date: _DanhmucAmthuc[index].date,
                    introduction: _DanhmucAmthuc[index].introduction,
                    quan1: _DanhmucAmthuc[index].quan1,
                    address1: _DanhmucAmthuc[index].address1,
                    sodienthoai1: _DanhmucAmthuc[index].sodienthoai1,
                    quan2: _DanhmucAmthuc[index].quan2,
                    address2: _DanhmucAmthuc[index].address2,
                    sodienthoai2: _DanhmucAmthuc[index].sodienthoai2,
                  ),
                ),);
              },
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 160,
                            height: 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                _Amthuc[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8
                              ),
                              child: Text(
                                "${_Amthuc[index].caption}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(.4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "${_Amthuc[index].name}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _vuichoiWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Điểm Vui Chơi",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            InkWell( onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => DanhmucVuichoi(),
              ),);
            },
              child: Text("View All",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.3)
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Container(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _Vuichoi.length,
            itemBuilder: (_, index){
              return InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => ThongtinVuichoi(
                    location: _DanhmucVuichoi[index].location,
                    image: _DanhmucVuichoi[index].image,
                    date: _DanhmucVuichoi[index].date,
                    introduction: _DanhmucVuichoi[index].introduction,
                    address: _DanhmucVuichoi[index].address,
                    vitrimap: _DanhmucVuichoi[index].vitrimap,
                  ),
                ),);
              },
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 160,
                            height: 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                _Vuichoi[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8
                              ),
                              child: Text(
                                "${_Vuichoi[index].caption}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(.4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "${_Vuichoi[index].name}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
