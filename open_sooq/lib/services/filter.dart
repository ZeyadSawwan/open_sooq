import 'package:open_sooq/models/http_models/countries_response.dart';
import 'package:open_sooq/utils/repository/http_repository.dart';

class FilterService {
  Future<List<Countries>> getCountries() async {
    final response = await HttpRepository()
        .callRequest(requestType: RequestType.get, methodName: "countries");
    return CountriesResponse.fromJson(response).data!;
  }
}
