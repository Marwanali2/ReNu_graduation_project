import 'package:equatable/equatable.dart';

class CreateAntika extends Equatable {
  final int id;
  final String name;

  const CreateAntika({required this.id, required this.name});

  factory CreateAntika.fromJson(Map<String, dynamic> json) => CreateAntika(
        id: json['id'] as int,
        name: json['name'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  @override
  List<Object?> get props => [id, name];
}
