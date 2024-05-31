import 'package:flutter/cupertino.dart';

class Searchbar extends StatelessWidget {
  Searchbar({Key? key}) : super(key: key);

  final TextEditingController _textController = TextEditingController(text: 'Push ups');

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(

      controller: _textController,
      placeholder: 'Search',
      style: TextStyle(color: CupertinoColors.black, fontSize: 14),
      prefix: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          CupertinoIcons.search,
          color: CupertinoColors.activeOrange,
        ),
      ),
      cursorColor: CupertinoColors.activeOrange,
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
