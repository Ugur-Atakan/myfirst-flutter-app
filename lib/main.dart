import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var data = ["veri1", "veri2", "veri3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADSASD'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ElevatedButton(
                  child: Text(data[index]),
                  onPressed: () {
                    var alert = AlertDialog(
                      title: Text(data[index]),
                      content: Text(data[index]),
                    );

                    showDialog(
                      context: context,
                      builder: (BuildContext context) => alert,
                    );
                  },
                );
              },
              itemCount: data.length,
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Beni Tıkla'),
              onPressed: () {
                var alert = AlertDialog(
                  title: const Text('asdas'),
                  content: const Text('adsasda'),
                );

                showDialog(
                  context: context,
                  builder: (BuildContext context) => alert,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
