part of 'property_bloc.dart';

@freezed
abstract class PropertyEvent with _$PropertyEvent {
  const factory PropertyEvent.addNewProperty(
    PropertyModel property,
    VoidCallback onSuccess,
  ) = _AddNewProperty;
  const factory PropertyEvent.fetchAllProperties() = _FetchAllProperties;

  const factory PropertyEvent.shareProperty({
    required String title,
    required String description,
    required String url,
    required String imageUrl,
  }) = _ShareProperty;
}
