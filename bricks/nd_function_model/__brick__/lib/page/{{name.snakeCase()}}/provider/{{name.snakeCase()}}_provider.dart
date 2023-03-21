import 'dart:convert';

import 'package:flutter/cupertino.dart';

class {{name.pascalCase()}}Provider extends ChangeNotifier {
   var currentStatus ;
  //页面状态
  {{name}}Provider(BuildContext context) {
    //初始化
    initData();
  }

  initData() {
        //TODO:请求参数
    Map<String, dynamic> params=Map();
    {{name.pascalCase()}}RequestApi.{{name.snakeCase()}}Api(params,
      (value) {
      },
      fail: (p0) {

      },
    );
  }

  onRetry() async {
    
  }

  onRefresh() async {
  
  }
}
