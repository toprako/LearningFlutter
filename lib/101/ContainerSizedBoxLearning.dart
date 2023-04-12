import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          //const SizedBox.shrink(),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b'*50),
          ),
          Container(
            width: 100,
            height: 100,
            constraints: const BoxConstraints(
              maxWidth: 150,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              gradient: const LinearGradient(
                  colors: [Colors.red,Colors.black]
              ),
              boxShadow: const [BoxShadow(
                offset: Offset(0.1,1),
              )],
              border: Border.all(
                color: Colors.white12,
                width: 10,
              ),
            ),
            child: Text('aa' * 100),
          ),
        ],
      ),
    );
  }

}