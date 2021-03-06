import 'package:flutter/material.dart';
import 'filler.dart';
import 'onwatch.dart';
import '../components/drawer.dart';
import 'layout.dart';

int _currentIndex = 0;
bool login = true;
final List<Widget> _screen = [
  Layout(),
  Filler(
    text: 'Lifestyle items here',
  ),
  Filler(
    text: 'Clothing items here',
  ),
  Filler(
    text: 'Electronic items here',
  ),
];

class MenuSelector extends StatefulWidget {
  final List<String> items;
  final _NewHomeState parent;
  MenuSelector({this.items, this.parent});
  @override
  _MenuSelectorState createState() => _MenuSelectorState();
}

class _MenuSelectorState extends State<MenuSelector> {
  bool _isSelected;

  List<Widget> _buildMenu() {
    return widget.items.map((item) {
      var index = widget.items.indexOf(item);
      _isSelected = _currentIndex == index;
      return Padding(
        padding: const EdgeInsets.only(left: 15, right: 10),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
            widget.parent.setState(() {
              _currentIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 7, 0, 12),
            child: Text(
              item,
              style: TextStyle(
                color: _isSelected ? Colors.black : Colors.grey,
                fontSize: _isSelected ? 20 : 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: _buildMenu(),
        ),
      ),
    );
  }
}

class NewHome extends StatefulWidget {
  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      key: _scaffoldKey,
      drawer: HamburgerMenu(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 18, left: 20, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            _scaffoldKey.currentState.openDrawer();
                          },
                        ),
                        Text(
                          login ? 'Welcome back,\nSahil' : 'Welcome,\nGuest',
                          textScaleFactor: 2,
                        ),
                      ],
                    ),
                  ),
                  Hero(
                    tag: 'logo',
                    child: IconButton(
                      icon: Icon(Icons.notifications_active),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OnWatch()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  labelText: 'Search',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                  focusColor: Colors.black,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(30, 0, 0, 2),
            //   child: Row(
            //     children: <Widget>[
            //       Text(
            //         'CATEGORIES  ',
            //         style: TextStyle(
            //           fontFamily: kFontStyle,
            //           fontSize: 16,
            //           fontWeight: FontWeight.w900,
            //         ),
            //       ),
            //       Icon(
            //         Icons.arrow_downward,
            //         size: 16,
            //       ),
            //     ],
            //   ),
            // ),
            MenuSelector(
              items: ['GENERAL', 'LIFESTYLE', 'CLOTHING', 'ELECTRONICS'],
              parent: this,
            ),
            Expanded(
              child: _screen[_currentIndex],
            ),
          ],
        ),
      ),
    );
  }
}
