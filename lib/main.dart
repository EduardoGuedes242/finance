import 'package:app_finance/src/ui/widgets/button.dart';
import 'package:app_finance/src/ui/widgets/combobox.dart';
import 'package:app_finance/src/ui/widgets/edit.dart';
import 'package:app_finance/src/ui/widgets/title.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EGTitle(text: 'Take Control of Your Finances'),
            SizedBox(height: 50),
            EGEdit(
              controller: controller,
              title: 'Login',
              hintText: 'Email',
              pathIcon: 'assets/icons/edit/email.svg',
            ),
            SizedBox(height: 50),
            EGCombobox(
              array: {1: 'Option 1', 2: 'Option 2', 3: 'Option 3'},
              title: 'Login',
              hintText: 'Email',
              pathIcon: 'assets/icons/edit/arrow-combobox.svg',
            ),
            SizedBox(height: 50),
            EGButton(
              title: 'Login',
              function: () {
                print('Nome escrito: ${controller.text}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
