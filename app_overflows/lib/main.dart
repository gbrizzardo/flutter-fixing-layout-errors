import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Overfow Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Overflow'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Exist ListView(builder) optional
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Expanded adapt amber container, it's ok
              // Expanded(child:
              Container(
                height: 400,
                color: Colors.amber,
                child: const Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal, // horizontal  scroll
                      child: Row(
                        children: [
                          // Expanded( child:
                          Text(
                            'This text is an example of how to fix horizontal overflow in Flutter using a Text Widget wrapped with Expanded.',
                            // optional modes
                            // maxLines: 1,
                            // [...] on last word
                            // overflow: TextOverflow.ellipsis,
                          ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // ),
              Container(
                height: 400,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
