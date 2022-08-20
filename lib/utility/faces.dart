import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Faces extends StatelessWidget {
  final emojiicon;
  final emojiname;
  const Faces({Key? key, required this.emojiicon, required this.emojiname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            child: Text(
              emojiicon,
              style: const TextStyle(fontSize: 45),
            )),
            const SizedBox(height: 8,),
        Text(emojiname,style: const TextStyle(color: Colors.white),),
      ],
    );
  }
}
