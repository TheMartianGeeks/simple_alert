import 'package:flutter/material.dart';
import 'package:simple_alert/simple_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Success alert'),
              color: Colors.lightGreen,
              onPressed: () {
                SimpleAlert.success(
                  context,
                  title: 'Create user',
                  message:
                      'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet...',
                  onCancel: () {
                    print('cancel');
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('Danger alert'),
              color: Colors.red,
              onPressed: () {
                SimpleAlert.danger(
                  context,
                  title: 'Create user',
                  message:
                      'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet...',
                  onCancel: () {
                    print('cancel');
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('Infos alert'),
              onPressed: () {
                SimpleAlert.info(
                  context,
                  title: 'Create user',
                  message:
                      'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet...',
                  onCancel: () {
                    print('cancel');
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('Warning alert'),
              onPressed: () {
                SimpleAlert.warning(
                  context,
                  title: 'Create user',
                  message:
                      'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet...',
                  onCancel: () {
                    print('cancel');
                  },
                );
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
