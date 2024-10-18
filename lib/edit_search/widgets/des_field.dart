import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/edit_search/bloc/edit_search_bloc.dart';

class DesField extends StatelessWidget {
  const DesField({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EditSearchBloc>().state;

    return TextFormField(
      key: const Key('editTaskView_userId_textFormField'),
      initialValue: state.userId.toString(),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'You should enter your UserId';
        }
        return null;
      },
      decoration: InputDecoration(
        enabled: !state.status.isLoadingOrSuccess,
        labelText: 'Description',
        hintText: 'Description',
        icon: const Icon(Icons.calendar_month),
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
        var parsedValue = int.tryParse(value);
        if (parsedValue != null) {
          // context.read<EditSearchBloc>().add();
        }
      },
    );
  }
}
