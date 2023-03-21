import 'package:plugin_flutter_net/baseHttp/network/http_core.dart';

class {{name.pascalCase()}}RequestApi {
   //自定义api path
   static const String  {{name.constantCase()}}_PATH ="";

  static {{name.snakeCase()}}Api(Map<String, dynamic> params, Success success,
      {Fail? fail}) {
    return HttpUtil.instance.get({{name.constantCase()}}_PATH,
        params: params,
        success: success,
        fail: fail);
  }

}