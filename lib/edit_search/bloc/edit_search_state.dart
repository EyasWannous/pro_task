part of 'edit_search_bloc.dart';

enum EditSearchStatus { initial, loading, success, failure }

extension EditSearchStatusX on EditSearchStatus {
  bool get isLoadingOrSuccess => [
        EditSearchStatus.loading,
        EditSearchStatus.success,
      ].contains(this);
}

final class EditSearchState extends Equatable {
  const EditSearchState({
    this.status = EditSearchStatus.initial,
    this.initialSearch,
    this.todo = '',
    this.userId = 0,
    this.completed = false,
  });

  final EditSearchStatus status;
  final Data? initialSearch;
  final String todo;
  final int userId;
  final bool completed;

  bool get isNewSearch => initialSearch == null;

  EditSearchState copyWith({
    EditSearchStatus? status,
    Data? initialSearch,
    String? todo,
    int? userId,
    bool? completed,
  }) {
    return EditSearchState(
      status: status ?? this.status,
      initialSearch: initialSearch ?? this.initialSearch,
      todo: todo ?? this.todo,
      userId: userId ?? this.userId,
      completed: completed ?? this.completed,
    );
  }

  @override
  List<Object?> get props => [status, initialSearch, todo, userId, completed];
}
