// ignore_for_file: file_names, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:xmessenger/Data/linkedDevicesData.dart';

class LinkedDevicesScreen extends StatefulWidget {
  const LinkedDevicesScreen ({super.key});

  @override

  _LinkedDevicesScreenState createState() => _LinkedDevicesScreenState();
}

class _LinkedDevicesScreenState extends State<LinkedDevicesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('_Linked Devices', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromRGBO(0, 255, 145, 1)),),
        backgroundColor: const Color.fromARGB(255, 51, 13, 87),
      ),
      body:Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 29, 3, 39),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/devices.jpg', 
                  width: double.infinity ,
                  height: 150, 
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      const Text('Use XMessenger on Web, Desktop and other Devices...', style: TextStyle(color: Color.fromARGB(255, 0, 255, 145), fontStyle: FontStyle.italic, fontSize: 10),),
                      GestureDetector(
                        child: const Text('Learn More', style: TextStyle(color: Colors.blue, fontSize: 10 ),),
                        onTap: () => print('Link has Been Pressed'),
                      )
                    ]
                ),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0), 
                  child: ElevatedButton(
                onPressed: () {
                      // Implement your "Link Device" functionality here
                      print('Button has been Pressed');},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                    child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Link A Device',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              )

                
            ],
        ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 31, 3, 42),
              child: const LinkedDevicesData(),
            ),
          ),
        ],
      ), 
      backgroundColor:const Color.fromARGB(255, 44, 0, 62),
      /*const LinkedDevicesData(),
      backgroundColor: const Color.fromARGB(255, 44, 0, 62),*/
      
    );
  }
}