import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {

  final Function addTaskCallback;
  AddTask(this.addTaskCallback);
  String newTask = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'ADD TASK',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.lightBlueAccent,
                  onChanged: (value) {
                    newTask = value;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    addTaskCallback(newTask);
                  },
                  child: Container(
                    width: double.infinity,
                    color: Colors.lightBlueAccent,
                    child: Center(
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
