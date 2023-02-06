import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  String taskTitle;
  TaskWidget({super.key, required this.taskTitle});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    String taskTitle = widget.taskTitle;
    bool _currentValue = false;
    return Row(
      children: [
        Radio(
          value: _currentValue,
          groupValue: 'groupValue',
          onChanged: (value) {
            setState(() {
              _currentValue = !_currentValue;
              value = _currentValue;
            });
          },
          activeColor: Colors.red,
        ),
        Text(taskTitle,
            style: TextStyle(color: Colors.grey[900], fontSize: 16.0))
      ],
    );
  }
}
