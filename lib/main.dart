import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

bool isIOS = false;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (isIOS == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Material App"),
                centerTitle: true,
                actions: [
                  Switch(
                    value: isIOS,
                    onChanged: (val) {
                      setState(() {
                        isIOS = val;
                      });
                    },
                  ),
                ],
              ),
              body: Container(
                alignment: Alignment.center,
                child: Container(),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text("Cupertino App"),
                trailing: CupertinoSwitch(
                  value: isIOS,
                  onChanged: (val) {
                    setState(() {
                      isIOS = val;
                    });
                  },
                ),
              ),
              child: Container(),
            ),
          );
  }
}
