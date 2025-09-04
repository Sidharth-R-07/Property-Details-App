import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:property/core/utils/failures/app_failures.dart';
import 'package:property/core/utils/typedef/type_def.dart';
import 'package:property/domain/models/property_model.dart';
import 'package:property/domain/repository/property/property_repository.dart';

class PropertyRepositoryImpl implements PropertyRepository {
  PropertyRepositoryImpl(this.firestore);
  final FirebaseFirestore firestore;

  @override
  FutureResult<PropertyModel> addProperty(PropertyModel propertyData) async {
    try {
      final docRef = firestore.collection('properties').doc();
      final propertyWithId = propertyData.copyWith(id: docRef.id);
      await docRef.set(propertyWithId.toMap());
      return Right(propertyWithId);
    } catch (e) {
      return Left(MainFailure(message: e.toString()));
    }
  }

  @override
  FutureResult<List<PropertyModel>> getProperties() async {
    try {
      final querySnapshot = await firestore.collection('properties').get();
      debugPrint(
        'Fetched ${querySnapshot.docs.length} properties from Firestore.',
      );
      final propertyList = querySnapshot.docs
          .map((doc) => PropertyModel.fromMap(doc.data()))
          .toList();
      return Right(propertyList);
    } catch (e) {
      debugPrint('Error fetching properties: $e');
      return Left(MainFailure(message: e.toString()));
    }
  }
}
