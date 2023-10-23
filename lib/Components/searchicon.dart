import 'package:flutter/material.dart';

class SearchIcon extends SearchDelegate<String> {


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

    return Container(
      color: const Color.fromARGB(255, 44, 0, 62), 
      child: ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(query, 
        style: const TextStyle(color: Color.fromARGB(255, 0, 255, 145))),
          );
        } 
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context){

    return Container(
      color: const Color.fromARGB(255, 44, 0, 62), 
      child: ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(query, 
        style: const TextStyle(color: Color.fromARGB(255, 0, 255, 145))),
          );
        } 
      ),
    );

      
  }
}
