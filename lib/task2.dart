import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class route1 extends StatelessWidget {
  const route1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Route 1'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(150, 0, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const route2()));
                  },
                  child: Text("Get Message"),
                ),
              ),
            ]),
      ),
    );
  }
}

class route2 extends StatelessWidget {
  const route2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Route 2'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.fromLTRB(150, 0, 0, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Submit"),
            ),
          ),
        ]),
      ),
    );
  }
}
