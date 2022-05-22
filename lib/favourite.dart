import 'package:flutter/material.dart';

class favourite extends StatelessWidget{
  final List savedList;
  favourite({required this.savedList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved entries'),
      ),
      body: ListView.builder(
        itemCount: savedList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Entry ${savedList[index]}"),
          );
        },
      ),
    );
  }
}

