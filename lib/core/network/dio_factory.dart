import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// A factory class for creating and managing a singleton instance of Dio.
class DioFactory {
  /// Private constructor to prevent creating an instance of `DioFactory`.
  DioFactory._();

  static Dio? dio;

  /// Returns a singleton Dio instance, creating it if necessary.
  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  /// Adds an interceptor for logging Dio requests and responses.
  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
