import 'package:flutter/material.dart';
import 'DetailsScreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDetailsVisible1 = false;
  bool isDetailsVisible2 = false;
  bool isDetailsVisible3 = false;

  void toggleContentVisibility1() {
    setState(() {
      isDetailsVisible1 = !isDetailsVisible1;
    });
  }

  void toggleContentVisibility2() {
    setState(() {
      isDetailsVisible2 = !isDetailsVisible2;
    });
  }

  void toggleContentVisibility3() {
    setState(() {
      isDetailsVisible3 = !isDetailsVisible3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Food Recipe')
            ],),
            backgroundColor: Colors.black87,
      ),
      body: ListView(
        children:  <Widget>[
          Card(
            child: ListTile(
              title: Text('Palak Paneer'),
              onTap: () {
                toggleContentVisibility1();
                isDetailsVisible2 = false;
                isDetailsVisible3 = false;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(isContentVi: isDetailsVisible1,isContentVi2: isDetailsVisible2,isContentVi3: isDetailsVisible3),
                  ),
                );
              },
            ),
          ),

          Card(
          child: ListTile(
            title: Text('Chole Bature'),
            onTap: () {
              toggleContentVisibility2();
              isDetailsVisible1 = false;
              isDetailsVisible3 = false;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(isContentVi: isDetailsVisible1,isContentVi2: isDetailsVisible2,isContentVi3: isDetailsVisible3),
                ),
              );
            },
          ),
          ),
          Card(
            child: ListTile(
              title: Text('Butter Chicken'),
              onTap: () {
                toggleContentVisibility3();
                isDetailsVisible1 = false;
                isDetailsVisible2 = false;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(isContentVi: isDetailsVisible1,isContentVi2: isDetailsVisible2,isContentVi3: isDetailsVisible3),
                  ),
                );
              },
            ),
          ),
      ],
      ),
    );
  }
}