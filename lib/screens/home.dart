import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled4/domain/list.dart';
import 'package:untitled4/components/activlist.dart';
import '../components/activlist.dart';
import '../components/list2.dart';
import '../services/auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sectionindex = 0;

  @override
  Widget build(BuildContext context) {
    var NavigationBar = CurvedNavigationBar(
      items: const <Widget>[Icon(Icons.fitness_center), Icon(Icons.search),Icon(Icons.abc)],
      index: 0,
      height: 65,
      color: Colors.white.withOpacity(0.5),
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.white.withOpacity(0.5),
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 500),
      onTap: (int index) {
        setState(() => sectionindex = index);
      },
    );

    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(28, 84, 56, 1), //верхушка
          title:
          Text('Home Service / ' + (sectionindex == 0 ? 'Active' : 'Find')),
          leading: Icon(Icons.account_balance),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  AuthService().logOut();
                },
                icon: Icon(Icons.supervised_user_circle, color: Colors.white),
                label: SizedBox.shrink())
          ],
        ), //leading иконка слева
        body: sectionindex == 0 ? ActiveList() : WorkoutList(),
        bottomNavigationBar: NavigationBar,
      ),
    );
  }
}
