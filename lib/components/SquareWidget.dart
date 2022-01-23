import 'dart:math';

import 'package:flutter/material.dart';

class SquareWidget extends StatelessWidget {
  const SquareWidget({
    Key? key,
  }) : super(key: key);

  BoxDecoration gradient1() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(27),
      gradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.blue,
          Colors.red,
        ],
      )
    );
  }

  BoxDecoration gradient2() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(27),
      gradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xfff1ae39),
          Color(0xfff1cb42),
        ],
      )
    );
  }

  BoxDecoration color1() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(27),
      color: const Color.fromRGBO(20, 20, 20, 1),
    );
  }

  BoxDecoration color2() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(27),
      color: const Color.fromRGBO(0, 0, 0, 0.25),
    );
  }

  
  BoxDecoration random() {
    var list = [gradient1(), gradient2(), color1(), color2()];
    final _random = Random();
    return list[_random.nextInt(list.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const <Widget>[
          Text(
            'sometext',
            style: TextStyle(
              fontFamily: 'SanFrancisco',
              fontSize: 30,
              color: Colors.white
            )
          ),
        ],
      ),
      decoration: random()
    );
  }
}