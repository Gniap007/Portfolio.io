import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
class ProjectModel with _$ProjectModel {
  const factory ProjectModel({
    required String image,
    required String title,
    required String subtitle,
  }) = _ProjectModel;

  // Correct factory for JSON serialization
  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}

// Add a Riverpod provider for the model list.
@riverpod
class ProjectModelProvider extends _$ProjectModelProvider {
  @override
  List<ProjectModel> build() => [
        // Example data
        const ProjectModel(image: 'assets/images/easy.png', title: 'Easy Booking', subtitle: 'For Small Business Financial Case'),
        const ProjectModel(image: 'assets/images/fluttera.png', title: 'Flutter AI', subtitle: 'ChatGPT For Flutter'),
      ];
}
