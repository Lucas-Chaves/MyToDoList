import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/ui.dart';
import '../../utils/utils.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return DracoScaffold(
      body: BlocConsumer<TaskCubit, TaskState>(
        bloc: BlocProvider.of<TaskCubit>(context),
        listener: (context, state) {},
        builder: (context, state) {
          if (state.status == TaskStatus.success) {
            return RefreshIndicator(
              onRefresh: () async {
                await Future.delayed(Duration(seconds: 2), () async {
                  await context.read<TaskCubit>().getAllTasks();
                });
              },
              child: ListView.builder(
                  itemCount: state.allTasks.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          child: Text(state.allTasks[index].taskTitle),
                        ),
                        Container(
                          child: Text(state.allTasks[index].taskDescription),
                        ),
                      ],
                    );
                  }),
            );
          } else {
            return Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          }
        },
      ),
    );
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    final taskCubit = BlocProvider.of<TaskCubit>(context);
    await taskCubit.getAllTasks();
  }
}
