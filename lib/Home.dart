import 'package:flutter/material.dart';
import 'favourite.dart';

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> entries = <String>['A', 'B', 'C'];
  List saved = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed:(){}, icon: Icon(Icons.filter_list)),
        actions: [
          IconButton(onPressed:(){pushSaved();}, icon: Icon(Icons.search)),
        ],
      ),
      //2.build list & Add item to list
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (context, index) => builtFavouriteItem(entries[index]),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: ''),
         // BottomNavigationBarItem(icon: Icon(Icons.coffee), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.coffee_maker), label: ''),
        ],
      ),
    );
  }

// 1- Build the item
  Widget builtFavouriteItem(String word) {
    final alreadySaved = saved.contains(word);
    return ListTile(
      title: Text('Entry ${word}'),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          // Remove the entry from the saved list
          if (alreadySaved) {
            saved.remove(word);
          } else {
            // Add the entry to the saved list
            saved.add(word);
          }
        });
      },
    );
  }

  // Navigate to a page containing the saved entries
  void pushSaved() {
    if (saved.isNotEmpty) {
      var savedList = saved.toList();
      Navigator.of(context).push(
        MaterialPageRoute(
          //return the favourite page
          builder: (context) => favourite(savedList: savedList),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("No selected entries"),)
      );
    }
  }
}

