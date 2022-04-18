import 'package:flutter/material.dart';
import 'package:myapp/data/CustomWorkoutOneTable.dart';
import 'package:myapp/model/user.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widget/scrollable_widget.dart';
import 'package:myapp/widget/text_dialog_widget.dart';

class CustomWorkoutOne extends StatefulWidget {
  @override
  WOOnePage createState() => WOOnePage();
}

class WOOnePage extends State<CustomWorkoutOne> {
  late List<User> users;

  @override
  void initState() {
    super.initState();

    this.users = List.of(WorkoutOne);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ScrollableWidget(child: buildDataTable()),
      );

  Widget buildDataTable() {
    final columns = ['Exercise', 'Sets', 'Reps'];

    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith((states) => Colors.red),
      columns: getColumns(columns),
      rows: getRows(users),
    );
  }

  List<DataColumn> getColumns(List<String> columns) {
    return columns.map((String column) {
      final isReps = column == columns[2];

      return DataColumn(
        label: Text(column),
        numeric: isReps,
      );
    }).toList();
  }

  List<DataRow> getRows(List<User> users) => users.map((User user) {
        final cells = [user.Exercise, user.Sets, user.Reps];

        return DataRow(
          cells: Utils.modelBuilder(cells, (index, cell) {
            //final showEditIcon = index == 0 || index == 1;

            return DataCell(
              Text('$cell'),
              //showEditIcon: showEditIcon,
              onTap: () {
                switch (index) {
                  case 0:
                    EditExercise(user);
                    break;
                  case 1:
                    EditSets(user);
                    break;
                  case 2:
                    EditReps(user);
                    break;
                }
              },
            );
          }),
        );
      }).toList();

  Future EditExercise(User editUser) async {
    final Exercise = await showTextDialog(
      context,
      title: 'Change Exercise Name',
      value: editUser.Exercise,
    );

    setState(() => users = users.map((user) {
          final isEditedUser = user == editUser;

          return isEditedUser ? user.copy(Exercise: Exercise) : user;
        }).toList());
  }

  Future EditSets(User editUser) async {
    final Sets = await showTextDialog(
      context,
      title: 'Change Sets',
      value: editUser.Sets,
    );

    setState(() => users = users.map((user) {
          final isEditedUser = user == editUser;

          return isEditedUser ? user.copy(Sets: Sets) : user;
        }).toList());
  }

  Future EditReps(User editUser) async {
    final Reps = await showTextDialog(
      context,
      title: 'Change Reps',
      value: editUser.Reps,
    );

    setState(() => users = users.map((user) {
          final isEditedUser = user == editUser;

          return isEditedUser ? user.copy(Reps: Reps) : user;
        }).toList());
  }
}
