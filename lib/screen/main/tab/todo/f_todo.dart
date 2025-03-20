import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_todo_list.dart';
import 'package:flutter/material.dart';

class TodoFragment extends StatefulWidget {
  const TodoFragment({super.key});

  @override
  State<TodoFragment> createState() => _TodoState();
}

class _TodoState extends State<TodoFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.seedColor,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.menu),
              )
            ],
          ),
          Expanded(child: TodoList().pSymmetric(h: 15)),
        ],
      ),
    );
  }
}
