import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ButtonMenu extends StatelessWidget {
  ButtonMenu({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    debugPrint('titdddle: $title');
    print('teste');
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side:
                        BorderSide(color: Color.fromARGB(255, 148, 148, 148))),
                primary: Color.fromARGB(255, 202, 202, 202),
                fixedSize: Size.fromWidth(150),
                minimumSize: Size(160, 120),
                padding: EdgeInsets.all(6)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$title",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/form',
                  arguments: [title, 'teste']);
            },
          ),
        ),
      ),
    );
  }
}
