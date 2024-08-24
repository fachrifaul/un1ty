import '../../common/result.dart';
import '../api.dart';
import '../response/get_response.dart';

class HttpBinService {
  final ApiDio dio;

  HttpBinService(this.dio);

  Future<Result<GetResponse>> get() async {
    return dio.get(
      '/get',
      GetResponse.fromJson,
    );
  }

  Future<Result<GetResponse>> post() async {
    return dio.post(
      '/post',
      GetResponse.fromJson,
      body: {'abc': 123},
    );
  }

  Future<Result<GetResponse>> delete() async {
    return dio.delete(
      '/delete',
      GetResponse.fromJson,
    );
  }
}
