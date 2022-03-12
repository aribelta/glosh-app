import 'package:bigproject/model/detail.dart';
import 'package:bigproject/view/user/cart.dart';
import 'package:bigproject/view/user/deals.dart';
import 'package:bigproject/view/user/mainhome.dart';
import 'package:bigproject/view/user/notif.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _selectedIndex = 0;
  @override
  final pages = [MainHome(), CartWidget(), Deals(), Notifications()];

  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: Container(
            height: 65,
            decoration: const BoxDecoration(color: Color(0xffFFFBFE)),
            child: Row(
              children: [
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: bottomNavi.length,
                    itemBuilder: (ctx, position) {
                      var titleNavigation = bottomNavi[position];
                      return InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = position;
                            });
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: [
                                _selectedIndex == position
                                    ? Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              width: 50,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Color(0xffE8DEF8)),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Image.asset(
                                              "images/icon.png",
                                              height: 30,
                                            ),
                                          ),
                                        ],
                                      )
                                    : Icon(
                                        Icons.change_history,
                                        size: 30,
                                      ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  titleNavigation,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ]),
                            ),
                          ));
                    })
              ],
            ))
        // bottomNavigationBar: BottomNavigationBar(
        //   items: (){}
        //   //[
        //   //   BottomNavigationBarItem(
        //   //       icon: Icon(Icons.not_interested), label: "Home"),
        //   //   BottomNavigationBarItem(
        //   //       icon: Icon(Icons.not_interested), label: "My Chat"),
        //   //   BottomNavigationBarItem(
        //   //       icon: Icon(Icons.not_interested), label: "Deals"),
        //   //   BottomNavigationBarItem(
        //   //       icon: Icon(Icons.not_interested), label: "Notification"),
        //   // ],
        //   currentIndex: _selectedIndex,
        //   backgroundColor: Color(0xffffEADDFF),
        //   selectedItemColor: Colors.black,
        //   onTap: (int index) {
        //     setState(() {
        //       _selectedIndex = index;
        //     });
        //   },
        // ),
        );
  }
}
