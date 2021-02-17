import 'package:flutter/material.dart';

import 'package:ya_stukachok_platform_interface/ya_stukachok_platform_interface.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final stukachInstance = YaStukachokPlatform.instance;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  void initPlatformState() {
    stukachInstance.initCounter(0000000, {
      'clickmap': true,
      'trackLinks': true,
      'accurateTrackBounce': true,
      'ecommerce': "dataLayer",
      'triggerEvent': true,
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(children: [
            Text('Stukach: $stukachInstance'),
            MaterialButton(
              onPressed: () {
                stukachInstance.hit(
                  0000000,
                  '/',
                  {
                    'callback': () => print("Calling back"),
                    'params': {
                      'order_price': 10,
                      'currency': 'derevyanny',
                    }
                  },
                );
                stukachInstance.ecommerceAction(
                  EcommerceUnit(
                    ecommerce: Ecommerce(
                      add: CommerceActivity(
                        products: [
                          Products(
                            id: "0373",
                            name: "Vinishko",
                          ),
                          Products(
                            id: "0665",
                            name: "Govnishko",
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Text('Test hit'),
            )
          ]),
        ),
      ),
    );
  }
}
