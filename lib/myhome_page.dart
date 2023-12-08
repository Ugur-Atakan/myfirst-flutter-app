import 'package:flutter/material.dart';
import 'package:myapp/_buttons.dart';
import 'package:provider/provider.dart';
import 'package:myapp/main.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zikirmatik'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: <Widget>[
                    Text('Tema'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    ThemeStatus(),
                    Text('ÇEKİLEN ZİKİR: YA ALLAH CELLE CELALUHU'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Bugün çekilen zikir sayısı:'),
                    Count(),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 200,
                  child: Center(
                    child: IncrementButton(),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 200,
                  child: Center(
                    child: DecrementButton(),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 200,
                  child: Center(
                    child: ResetButton(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<CounterState>().count}',
      key: const Key('counterState'),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class ThemeStatus extends StatelessWidget {
  const ThemeStatus({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (context.watch<ThemeState>().isDarkMode == true) {
      return Text('DARK');
    } else {
      return Text('LIGHT');
    }
  }
}
