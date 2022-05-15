
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/domain/list.dart';

class WorkoutList extends StatefulWidget{


  @override
  State<WorkoutList> createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {
  final workouts = <Workout>[
    Workout(
        title: 'Test1',
        author: 'Max1',
        description: 'Test Workout1',
        level: 'Mondey'),
    Workout(
        title: 'Test2',
        author: 'Max2',
        description: 'Test Workout2',
        level: 'Tuesday'),
    Workout(
        title: 'Test3',
        author: 'Max3',
        description: 'Test Workout3',
        level: 'Wednesday'),
    Workout(
        title: 'Test4',
        author: 'Max4',
        description: 'Test Workout4',
        level: 'Thursday'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Test Workout5',
        level: 'Friday'),
    Workout(
        title: 'Test6',
        author: 'Max6',
        description: 'Test Workout6',
        level: 'Saturday'),
    Workout(
        title: 'Test7',
        author: 'Max7',
        description: 'Test Workout7',
        level: 'Sunday'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListView.builder(
            itemCount: workouts.length,
            itemBuilder: (context, i) {
              return Card(
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Container(
                  decoration:
                  BoxDecoration(color: Color.fromRGBO(50, 65, 85, 0.9)),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12),
                      child: Icon(Icons.cleaning_services, color: Theme
                          .of(context)
                          .textTheme
                          .titleSmall
                          ?.color), ////
                      decoration: BoxDecoration(
                          border: Border(right: BorderSide(
                              width: 1, color: Colors.white24))
                      ),
                    ),
                    title: Text(workouts[i].title, style: TextStyle(color: Theme
                        .of(context)
                        .textTheme
                        .titleSmall
                        ?.color, fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.keyboard_arrow_right, color: Theme
                        .of(context)
                        .textTheme
                        .titleSmall
                        ?.color),
                    subtitle: subtitle(context, workouts[i]),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget subtitle(BuildContext context, Workout workout) {
    var color = Colors.grey;
    double indicartorLevel = 0;
    switch (workout.level) {
      case 'Monday':
        color = Colors.green;
        indicartorLevel = 0.10;
        break;
      case 'Tuesday':
        color = Colors.yellow;
        indicartorLevel = 0.22;
        break;
      case 'Wednesday':
        color = Colors.deepOrange;
        indicartorLevel = 0.33;
        break;
      case 'Thursday':
        color = Colors.orange;
        indicartorLevel = 0.44;
        break;
      case 'Friday':
        color = Colors.deepPurple;
        indicartorLevel = 0.45;
        break;
      case 'Saturday':
        color = Colors.blueGrey;
        indicartorLevel = 0.55;
        break;
      case 'Sunday':
        color = Colors.blueGrey;
        indicartorLevel = 0.66;
        break;
    }
    return Row(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: LinearProgressIndicator(
                backgroundColor: Colors.yellow,
                value: indicartorLevel,
                valueColor: AlwaysStoppedAnimation(color)
            )
        ),
        SizedBox(width: 10),
        Expanded(
            flex: 3,
            child: Text(workout.level)
        )
      ],
    );
  }
}
