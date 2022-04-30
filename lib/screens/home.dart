import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled4/domain/list.dart';
import 'package:untitled4/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) :super (key: key);



  @override
  Widget build(BuildContext context) {
        return Container(
      child: Scaffold(
    backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(28, 84, 56, 1), //верхушка
          title: Text('Home Service'),
          leading: Icon(Icons.account_balance),
          actions: <Widget>[
            FlatButton.icon(onPressed:(){
              AuthService().logOut();
            }, icon: Icon(Icons.supervised_user_circle,color : Colors.white), label: SizedBox.shrink())
          ],
        ), //leading иконка слева
        body: WorkoutList(),
      ),
    );
  }
}

class WorkoutList extends StatelessWidget{


  final workouts= <Workout>[
    Workout(title: 'test1',author: 'Alex1',description: 'Test description1',level: 'Begginer1'),
    Workout(title: 'test2',author: 'Alex2',description: 'Test description2',level: 'Begginer2'),
    Workout(title: 'test3',author: 'Alex3',description: 'Test description3',level: 'Begginer3'),
    Workout(title: 'test4',author: 'Alex4',description: 'Test description4',level: 'Begginer4'),
    Workout(title: 'test5',author: 'Alex5',description: 'Test description5',level: 'Begginer5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListView.builder(
            itemCount: workouts.length,
            itemBuilder: (context, i){
              return Card(
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                child: Container(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent),
                  child: ListTile(
                      title: Text(workouts[i].title)
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}

