import 'dart:convert';

import 'package:flutter/cupertino.dart';


import '../api/{{name.snakeCase()}}_api.dart';

///{{name.snakeCase()}}的provider 类
class {{name.pascalCase()}}Provider extends ChangeNotifier {
   var currentStatus ;

  {{name.pascalCase()}}Provider(BuildContext context) {
    initData();
    initRequest();
  }
  //初始化参数
  initData() {
  
  }

  //加载请求
  initRequest(){
    Map<String, dynamic> params={};
    ///网络请求
    {{name.pascalCase()}}RequestApi.{{name.camelCase()}}Api(params,
      (value) {
           print("返回成功逻辑---${value}");
      },
      fail: (p0) {
         print("返回失败逻辑---${p0}");
      },
    );
  }

  onRetry() async {
    
  }

  onRefresh() async {
  
  }
}
