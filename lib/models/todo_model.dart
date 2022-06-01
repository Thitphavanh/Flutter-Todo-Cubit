// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uuid/uuid.dart';
import 'package:equatable/equatable.dart';

enum Filter {
  all,
  active,
  isCompleted,
}

Uuid uuid = Uuid();

class Todo {
  final String id;
  final String desc;
  final bool isCompleted;
  Todo({
    String? id,
    required this.desc,
    this.isCompleted = false,
  }) : this.id = id ?? uuid.v4();

  @override
  List<Object> get props => [id, desc, isCompleted];

  @override
  String toString() => 'Todo(id: $id, desc: $desc, isCompleted: $isCompleted)';
}
