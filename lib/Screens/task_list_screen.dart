import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({Key? key}) : super(key: key);

  @override
  TaskListScreenState createState() => TaskListScreenState();
}

class TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
            child: Center(
                child: FutureBuilder(future: DefaultAssetBundle.of(context).loadString('assets/tasks.json'),
                    builder: (context, snapshot) {
                      var tasks = json.decode(snapshot.data.toString());

                      return ListView.builder(itemBuilder: (BuildContext context, int index) {
                        var task = tasks[index];
                        return Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: const <Widget>[
                                Text("Name ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 24
                                  ),)
                              ],
                            )
                        );
                      },
                      itemCount: tasks == null ? 0 : tasks.length,
                      );

                    })
            )
        )
    );
  }
}
