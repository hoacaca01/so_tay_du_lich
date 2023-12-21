import 'package:flutter/material.dart';
import 'package:hoa12_dulich/Manhinh/chatScreen.dart';
import 'package:hoa12_dulich/Manhinh/homeScreen.dart';
import 'package:hoa12_dulich/Manhinh/profileScreen.dart';
import 'package:hoa12_dulich/Manhinh/settingScreen.dart';
import 'package:hoa12_dulich/Manhinh/themlichtrinhScreen.dart';
import 'package:hoa12_dulich/kho/khothongtinchitietTamlinh.dart';
import 'package:hoa12_dulich/thongtinchitiet/thongtinTamlinh.dart';

class DanhmucTamlinh extends StatelessWidget {
  final _DanhmucTamlinh = KhothongtinTamlinh.DanhmucTamLinh;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Danh Mục Tâm Linh Chi Tiết",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
                InkWell(onTap: (){
                  Navigator.pop(context);
                },child: Icon(Icons.arrow_back,
                )
                ),
              ],
            ),
            SizedBox(height: 5,),
            Expanded(
                child:ListView.builder(
                  itemCount: _DanhmucTamlinh.length,
                  itemBuilder: (_, index){
                    return InkWell(
                      onTap: (){
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
                        margin: EdgeInsets.only(bottom: 25),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 6,),
                                Text(
                                  _DanhmucTamlinh[index].location,
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 12,),
                            Stack(
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  height: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(15),
                                    ),
                                    child: Image.asset(_DanhmucTamlinh[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 48,
                                  left: 8,
                                  child: Container(
                                    child: Text(_DanhmucTamlinh[index].title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 26,
                                  left: 8,
                                  child: Container(
                                    child: Text(_DanhmucTamlinh[index].locationCap,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 8,
                                  child: Container(
                                    child: Text(_DanhmucTamlinh[index].date,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ))
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
}
