import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_todo_cubit/blocs/active_todo_count/active_todo_count_bloc.dart';
import 'package:flutter_todo_cubit/cubits/todo_list/todo_list_cubit.dart';

import '../../blocs/bloc.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'TODO',
          style: TextStyle(fontSize: 40.0),
        ),

        BlocBuilder<ActiveTodoCountBloc, ActiveTodoCountState>(
          builder: (context, state) {
            return Text(
              '${state.activeTodoCount} items left',
              style: const TextStyle(fontSize: 20.0, color: Colors.redAccent),
            );
          },
        ),

        // Text(
        //   '${context.watch<ActiveTodoCountCubit>().state.activeTodoCount} items left',
        //   style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
        // ),
      ],
    );
  }
}
