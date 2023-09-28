// ignore_for_file: file_names

import 'package:flutter/material.dart';


class LinkedDevicesData extends StatelessWidget {
  const LinkedDevicesData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ListView(
      children: const [
        LinkedDevicesTile(
          deviceName: 'Device 1',
          lastActive: '2 hours ago',
        ),
        LinkedDevicesTile(
          deviceName: 'Device 2',
          lastActive: '1 day ago',
        ),
        LinkedDevicesTile(
          deviceName: 'Device 3',
          lastActive: '3 days ago',
        ),
        // Add more LinkedDeviceTile widgets for each linked device
      ],
    ),
  );
}

  }



class LinkedDevicesTile extends StatelessWidget {
  const LinkedDevicesTile ({super.key, required this.deviceName, required this.lastActive});
  final String deviceName;
  final String lastActive;

  
  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: const Icon(Icons.devices, color: Color.fromARGB(255, 0, 255, 145), ),
      title: Text(deviceName, style: const TextStyle(color:Color.fromARGB(255, 0, 255, 145), ),),
      subtitle: Text('Last Active:  $lastActive', style: const TextStyle(color: Colors.grey),),
    );
  }
}