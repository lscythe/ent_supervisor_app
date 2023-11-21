import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:supervisor/constants/constants.dart';
import 'package:supervisor/models/models.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("${ApiConstants.authPath}supervisor-auth")
  Future<BaseResponse<LoginResponse>> postLogin(@Body() LoginRequest request);

  @POST("${ApiConstants.driverPath}Schedule")
  Future<BaseResponse<List<ScheduleResponse>>> postSchedule(
    @Body() ScheduleRequest request,
  );

  @POST("${ApiConstants.driverPath}Messages")
  Future<BaseResponse<List<MessageResponse>>> postMessages(
    @Body() MessageRequest request,
  );

  @POST("${ApiConstants.driverPath}Find-Replacement")
  Future<BaseResponse<EmptyResponse>> postReplacement(
    @Body() ReplacementRequest request,
  );

  @POST("${ApiConstants.driverPath}Shift-Drop")
  Future<BaseResponse<EmptyResponse>> postShiftDrop(
    @Body() ShiftDropRequest request,
  );

  @POST("${ApiConstants.driverPath}GetTracking")
  Future<BaseResponse<List<TrackingResponse>>> postTracking(
    @Body() TrackingRequest request,
  );

  @POST("${ApiConstants.driverPath}List")
  Future<BaseResponse<List<DriverResponse>>> postDrivers();

  @POST("${ApiConstants.driverPath}GetShiftLocation")
  Future<BaseResponse<List<ShiftLocationResponse>>> postShiftLocation();

  @POST("${ApiConstants.driverPath}GetShiftGroup")
  Future<BaseResponse<List<ShiftGroupResponse>>> postShiftGroup();

  @POST("${ApiConstants.driverPath}ListMasterShiftType")
  Future<BaseResponse<List<ShiftResponse>>> postShift();
}
