import 'package:dartz/dartz.dart';
import 'package:property/core/utils/failures/app_failures.dart';
// import 'package:folder_structure/data/model/api/api_response_model.dart';

// typedef ApiResponse<T> = Future<Either<T, ApiResponseModel>>;

// //FAILURE OR SUCCESS
// typedef FailureOrSuccess<T> = Either<MainFailure, T>;

typedef FutureResult<T> = Future<Either<MainFailure, T>>;
