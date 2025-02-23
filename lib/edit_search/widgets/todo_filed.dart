import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/edit_search/bloc/edit_search_bloc.dart';

class TodoField extends StatelessWidget {
  const TodoField({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EditSearchBloc>().state;

    return TextFormField(
      key: const Key('editTaskView_todo_textFormField'),
      initialValue: state.todo,
      keyboardType: TextInputType.multiline,
      validator: (value) {
        if (value == null || value.isEmpty) return 'You should enter your Todo';
        if (value.length < 4) {
          return 'your Todo shoudl be more than 3 charechter';
        }
        return null;
      },
      decoration: InputDecoration(
        enabled: !state.status.isLoadingOrSuccess,
        labelText: 'Description',
        hintText: 'description',
        icon: const Icon(Icons.title),
      ),
      maxLength: 350,
      autocorrect: true,
      minLines: 1,
      maxLines: 8,
      inputFormatters: [
        LengthLimitingTextInputFormatter(350),
        FilteringTextInputFormatter.singleLineFormatter,
      ],
      onChanged: (value) {
        // context.read<EditSearchBloc>().add();
      },
    );
  }
}
