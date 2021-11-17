import 'package:flutter/material.dart';
import 'package:todo_list/Widgets/listTile.dart';

class DynamicList extends StatefulWidget {

  final List tasklist;
  DynamicList(this.tasklist);

  @override
  _DynamicListState createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Listtile(widget.tasklist[index]);
        },
        itemCount: widget.tasklist.length);
  }
}
