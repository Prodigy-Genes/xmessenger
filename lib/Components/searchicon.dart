import 'package:flutter/material.dart';

class SearchIcon extends SearchDelegate<String> {

  final List<String> contacts;
  final List<String> message;

  SearchIcon(this.contacts, this.message);
  @override

  List<Widget> buildActions (BuildContext context){
    return [
      IconButton(onPressed: (){
        query = '';
      }, 
      icon: const Icon(Icons.clear)
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(onPressed: (){
      close(context, '');
    }, 
    icon: const Icon(Icons.arrow_back)
    );
  }

  @override
  Widget buildResults(BuildContext context){
    final results = contacts.where((item) => item.contains(query)).toList();

    return Container(
      color: const Color.fromARGB(255, 44, 0, 62), 
      child: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(results[index], 
        style: const TextStyle(color: Color.fromARGB(255, 0, 255, 145))),
          );
        } 
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context){
    final suggestions = message.where((item) => item.contains(query)).toList();

    return Container(
      color: const Color.fromARGB(255, 44, 0, 62), 
      child: ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(suggestions[index], 
        style: const TextStyle(color: Color.fromARGB(255, 0, 255, 145))),
          );
        } 
      ),
    );

      
  }
}
