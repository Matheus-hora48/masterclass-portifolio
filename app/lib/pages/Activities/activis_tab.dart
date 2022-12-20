import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActivisTab extends StatefulWidget {
  const ActivisTab({Key? key}) : super(key: key);

  @override
  State<ActivisTab> createState() => _ActivisTabState();
}

class _ActivisTabState extends State<ActivisTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 700,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset('assets/imgs/logo.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text.rich(TextSpan(
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: 'Zap ',
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: 'Frutas',
                              style: TextStyle(),
                            ),
                          ]))
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.language_rounded),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
