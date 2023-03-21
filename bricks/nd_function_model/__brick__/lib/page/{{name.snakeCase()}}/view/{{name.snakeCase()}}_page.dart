import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class {{name.pascalCase()}}Page extends StatefulWidget {
  Map<String, dynamic>? params;

  {{name.pascalCase()}}Page({this.params, Key? key}) : super(key: key);

  @override
  _{{name.pascalCase()}}PageState createState() => _{{name.pascalCase()}}PageState();
}

class _{{name.pascalCase()}}PageState extends State<{{name.pascalCase()}}Page> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<{{name.pascalCase()}}Provider>(
      create: (BuildContext context) => {{name.pascalCase()}}Provider(context),
      builder: (BuildContext context, child) => Scaffold(
        // backgroundColor: const Color(0xFFE1EFFF),
        appBar: AppBar(),
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Container(),
        ),
        // body: const Text("cccc"),
      ),
      lazy: false,
    );
  }

  @override
  void didPopNext() {}

  @override
  void didPushNext() {}

  @overvider
  void 

}