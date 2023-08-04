import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {

  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String? name;
  String? dis;
  String? url;
  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute=ModalRoute.of(context);
    if(modalRoute !=null && modalRoute.settings.arguments != null){
      Map<String,dynamic> map= modalRoute.settings.arguments as Map<String,dynamic>;
      name =map.containsKey('name') ? map['name']:'not found name';
      dis =map.containsKey('description') ? map['description']:'not found description';
      url =map.containsKey('url') ? map['url']:'not found url';
    }
    return Scaffold(
      appBar: AppBar(title: Text('about'),),
      body: Center(
        child: Text(name!),
      ),
    );
  }
}
