import 'package:flutter/material.dart';
import 'package:dev/screens/listview_item.dart';

class AttendanceStatus extends StatefulWidget {
  const AttendanceStatus({super.key});

  @override
  State<AttendanceStatus> createState() => _AttendanceStatus();
}

class _AttendanceStatus extends State<AttendanceStatus> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  static final List<Widget> _widgetOptions = <Widget>[
    Text(
      '메인 홈스크린',
      style: optionStyle,
    ),
    // Column(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
    //       child: Column(
    //         children: [
    //           Row(
    //             children: [
    //               Text(
    //                 '출석체크 현황',
    //                 style: optionStyle,
    //               ),
    //             ],
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               SizedBox(
    //                 child: Text(
    //                   '출근확정만 보기',
    //                   style: TextStyle(
    //                     fontSize: 15,
    //                   ),
    //                 ),
    //               ),
    //               IconButton(
    //                 onPressed: () {},
    //                 icon: Icon(Icons.check_circle_outline),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //     SizedBox(
    //       height: 150,
    //       width: 400,
    //       child: Card(
    //         elevation: 0,
    //         clipBehavior: Clip.antiAlias,
    //         color: Color(0xFFf6f6f6),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(18),
    //         ),
    //         child: InkWell(
    //           child: Padding(
    //             padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Text(
    //                       '신규 하이틴 드라마 배우를 찾습니다.',
    //                       style: TextStyle(fontWeight: FontWeight.w700),
    //                     ),
    //                     Image.asset(
    //                       'assets/images/g_check.png',
    //                       width: 16,
    //                       height: 16,
    //                     )
    //                   ],
    //                 ),
    //                 Row(
    //                   children: [
    //                     Text('7월17일'),
    //                     Text('단역배우'),
    //                   ],
    //                 ),
    //                 SizedBox(
    //                   height: 10,
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Row(
    //                       children: [
    //                         Image.asset(
    //                           'assets/images/ebs.png',
    //                           height: 50,
    //                           width: 50,
    //                         ),
    //                         SizedBox(
    //                           width: 20,
    //                         ),
    //                         Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             Text('EBS 교육방송'),
    //                             Row(
    //                               children: [
    //                                 Icon(Icons.payments_outlined),
    //                                 Text('시간당 10,000원'),
    //                               ],
    //                             ),
    //                           ],
    //                         ),
    //                       ],
    //                     ),
    //                     Row(
    //                       children: [
    //                         ElevatedButton(
    //                           onPressed: () {},
    //                           style: ElevatedButton.styleFrom(
    //                             primary: Colors.deepPurple,
    //                             elevation: 0,
    //                           ),
    //                           child: Text('출근확정'),
    //                         ),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //           onTap: () {
    //             print('test');
    //           },
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
    Container(child: ListviewItems(), height: 500, width: 300,),
    Text(
      '현장출석 QR페이지',
      style: optionStyle,
    ),
    Text(
      '현장출석 리스트 페이지',
      style: optionStyle,
    ),
    Text(
      '마이프로필,설정페이지',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/alert.png',
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
            child: _widgetOptions.elementAt(1),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.60),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex, //현재 선택된 Index
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: '01',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.article_outlined,
                  size: 35,
                ),
                label: '02',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/bottom_nav_center.png',
                  width: 65,
                  height: 65,
                ),
                label: '03',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  size: 35,
                ),
                label: '04',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  size: 35,
                ),
                label: '05',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
