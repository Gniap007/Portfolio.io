// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectModelImpl _$$ProjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectModelImpl(
      image: json['image'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
    );

Map<String, dynamic> _$$ProjectModelImplToJson(_$ProjectModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'subtitle': instance.subtitle,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectModelProviderHash() =>
    r'03a423e106fbc8b5d5c7b22da75657aaf83b11ba';

/// See also [ProjectModelProvider].
@ProviderFor(ProjectModelProvider)
final projectModelProviderProvider = AutoDisposeNotifierProvider<
    ProjectModelProvider, List<ProjectModel>>.internal(
  ProjectModelProvider.new,
  name: r'projectModelProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$projectModelProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProjectModelProvider = AutoDisposeNotifier<List<ProjectModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
