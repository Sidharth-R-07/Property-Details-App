import 'package:property/core/utils/typedef/type_def.dart';
import 'package:property/domain/models/property_model.dart';

abstract class PropertyRepository {
  FutureResult<PropertyModel> addProperty(PropertyModel propertyData) {
    throw UnimplementedError('addProperty not implemented');
  }

  FutureResult<List<PropertyModel>> getProperties() {
    throw UnimplementedError('getProperties not implemented');
  }
}
