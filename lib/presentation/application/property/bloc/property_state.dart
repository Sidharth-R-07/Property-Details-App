part of 'property_bloc.dart';

@freezed
abstract class PropertyState with _$PropertyState {
  const factory PropertyState({
    required bool submitLoading,
    required bool fetchLoading,
    required bool shareLoading,
    required List<PropertyModel> properties,
  }) = _PropertyState;

  factory PropertyState.initial() => const PropertyState(
    submitLoading: false,
    fetchLoading: false,
    properties: [],
    shareLoading: false,
  );
}
