import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providerdemo.dart';
import 'myclass.dart';

void main() {
  runApp(
      MaterialApp(home: ChangeNotifierProvider(
        create: (context) => myclass(),
        child: providerdemo(),
      ),
          debugShowCheckedModeBanner: false)
  );
}