import 'package:flutter/material.dart';

class AttendanceStatus extends StatefulWidget {
  const AttendanceStatus({super.key});

  @override
  State<AttendanceStatus> createState() => _AttendanceStatus();
}

class _AttendanceStatus extends State<AttendanceStatus> {
  int _selectedIndex = 0;

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
        Row(
          children: [
            Text(
              '출석체크 현황',
              style: optionStyle,
              textAlign: TextAlign.left,
            ),
            Text(
              '출근확정만 보기',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.right,
            ),
          ],
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
      '페이지3',
      style: optionStyle,
    ),
    Text(
      '페이지4',
      style: optionStyle,
    ),
    Text(
      '페이지5',
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex, //현재 선택된 Index
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '01',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '02',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '03',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '04',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '05',
            ),
          ],
        ),
      ),
    );
  }
}
