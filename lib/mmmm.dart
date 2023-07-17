import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'custom_app_bar.dart';

class MMMM extends StatefulWidget {
  const MMMM({Key? key}) : super(key: key);

  @override
  State<MMMM> createState() => _MMMMState();
}

class _MMMMState extends State<MMMM> {
  String name = '';
  String address = '';

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var url = Uri.parse('https://randomuser.me/api/');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var results = jsonData['results'][0];
      var fetchedName =
          results['name']['first'] + ' ' + results['name']['last'];
      var fetchedAddress = results['location']['street']['number'].toString() +
          ' ' +
          results['location']['street']['name'] +
          ', ' +
          results['location']['city'] +
          ', ' +
          results['location']['state'] +
          ', ' +
          results['location']['country'];

      setState(() {
        name = fetchedName;
        address = fetchedAddress;
      });
    } else {
      print('Failed to fetch random user. Error code: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height * 0.10;
    final width = screenSize.width * 0.3;

    return Scaffold(
      appBar: buildCustomAppBar('Info'),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Address: $address'),
          ],
        ),
      ),
    );
  }
}
