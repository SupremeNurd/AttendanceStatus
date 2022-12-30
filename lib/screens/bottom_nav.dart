import 'package:flutter/material.dart';

class AttendanceStatus extends StatefulWidget {
  const AttendanceStatus({super.key});

  @override
  State<AttendanceStatus> createState() => _AttendanceStatus();
}

class _AttendanceStatus extends State<AttendanceStatus> {
  int _selectedIndex = 0;
  String navImage = 'assets/images/bottom_nav_center.png';

<<<<<<< HEAD
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '페이지1',
      style: optionStyle,
    ),
    Text(
      '출석신청 현황',
      textAlign: TextAlign.left, style: optionStyle,
=======
  static const TextStyle optionStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final List<Widget> _widgetOptions = <Widget>[
    Text(
      '메인 홈스크린',
      style: optionStyle,
      textAlign: TextAlign.start,
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '출석체크 현황',
                    style: optionStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: SizedBox(
                      child: Text(
                        '출근확정만 보기',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      onPressed: () {},
                      icon: Icon(Icons.check_circle_outline))
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 140,
          width: 400,
          child: Card(
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            color: Color(0xFFf6f6f6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: InkWell(
              onTap: () {
                print('test');
              },
            ),
          ),
        ),
      ],
>>>>>>> f589bc0 (Initial commit)
    ),
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
        leading: IconButton(
          onPressed: () {},
<<<<<<< HEAD
          icon: Icon(Icons.add, size: 30, color: Colors.red,),
=======
          icon: Icon(
            Icons.add,
            size: 30,
            color: Colors.red,
          ),
>>>>>>> f589bc0 (Initial commit)
        ),
        actions: [
          IconButton(
            onPressed: () {},
<<<<<<< HEAD
            icon: Icon(Icons.add, size: 30, color: Colors.red,),
=======
            icon: Icon(
              Icons.add,
              size: 30,
              color: Colors.red,
            ),
>>>>>>> f589bc0 (Initial commit)
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
<<<<<<< HEAD

=======
>>>>>>> f589bc0 (Initial commit)
      ),
      body: Column(
        children: [
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
<<<<<<< HEAD
          Container(
            height: 140,
            width: 400,
            color: Colors.grey,
            margin: EdgeInsets.all(10),
          ),
          Container(
            height: 140,
            width: 400,
            color: Colors.grey,
            margin: EdgeInsets.all(10),
          ),
          Container(
            height: 140,
            width: 400,
            color: Colors.grey,
            margin: EdgeInsets.all(10),
          ),
=======
>>>>>>> f589bc0 (Initial commit)
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
          )),
    );
  }
}
