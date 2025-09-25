
import 'package:testapp/core/networking/api_error_handler.dart';
import 'package:testapp/core/networking/api_result.dart';
import 'package:testapp/features/home/data/apis/home_api_service.dart';
import 'package:testapp/features/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
   Future<ApiResult<LogoutResponseModel>> logout() async {
    try {
      final response = await _homeApiService.logout();  // تحتاج إضافة هذه الدالة في الـ API service
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}