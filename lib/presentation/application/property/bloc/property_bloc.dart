import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:property/core/utils/service/custom_toast.dart';
import 'package:property/domain/models/property_model.dart';
import 'package:property/domain/repository/property/property_repository.dart';
import 'package:property/domain/services/share_service.dart';

part 'property_event.dart';
part 'property_state.dart';
part 'property_bloc.freezed.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  PropertyBloc(this.repository, this.shareService)
    : super(PropertyState.initial()) {
    on<_AddNewProperty>(_addNewProperty);
    on<_FetchAllProperties>(_fetchAllProperties);
    on<_ShareProperty>(_shareProperty);
  }
  final PropertyRepository repository;
  final ShareService shareService;

  FutureOr<void> _addNewProperty(
    _AddNewProperty event,
    Emitter<PropertyState> emit,
  ) async {
    emit(state.copyWith(submitLoading: true));

    final res = await repository.addProperty(event.property);
    res.fold(
      (l) {
        showToast(l.message);
      },
      (r) {
        emit(state.copyWith(properties: [...state.properties, r]));
        event.onSuccess();
      },
    );
    emit(state.copyWith(submitLoading: false));
  }

  FutureOr<void> _fetchAllProperties(
    _FetchAllProperties event,
    Emitter<PropertyState> emit,
  ) async {
    emit(state.copyWith(fetchLoading: true));
    final res = await repository.getProperties();
    res.fold((l) => null, (r) {
      emit(state.copyWith(properties: r));
    });
    emit(state.copyWith(fetchLoading: false));
  }

  FutureOr<void> _shareProperty(
    _ShareProperty event,
    Emitter<PropertyState> emit,
  ) async {
    emit(state.copyWith(shareLoading: true));
    await shareService.shareProperty(
      title: event.title,
      description: event.description,
      url: event.url,
      imageUrl: event.imageUrl,
    );
    emit(state.copyWith(shareLoading: false));
  }
}
