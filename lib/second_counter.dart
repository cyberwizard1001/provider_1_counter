import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1_counter/models/main_model.dart';


class SecondCounter extends StatefulWidget {
  const SecondCounter({super.key, required this.title});

  final String title;

  @override
  State<SecondCounter> createState() => _SecondCounterState();
}

class _SecondCounterState extends State<SecondCounter> {
  @override
  Widget build(BuildContext context) {
    //To be able to subscribe to changes, this function has to return
    //a ChangeNotifierProvider widget with a Consumer widget (see, consumer-subscriber,
    //now it all makes sense!)
    return Consumer<MainModel>(
          builder: (context, model, child) => Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(widget.title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${model.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => model.counter++,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          )
    );
  }
}
