import 'package:plugin_flutter_net/baseHttp/network/http_core.dart';

class {{name.pascalCase()}}RequestApi {
   ///TODO:
   static const String  DEFINE_HOST_URL ="";//根据需求是否修改，null默认走初始化host
   static const String  {{name.constantCase()}}_PATH ="";//请求api的path

  static {{name.camelCase()}}Api(Map<String, dynamic> params, Success success,
      {Fail? fail}) {
    return HttpUtil.instance.get({{name.constantCase()}}_PATH,
        params: params,
        success: success,
        baseUrl: DEFINE_HOST_URL,
        fail: fail);
  }

}