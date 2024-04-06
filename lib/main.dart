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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final  _number = TextEditingController();
  String _result1 = '';
  String _result2 = '';
  String _result3 = '';
  String _result4 = '';
  String _result5 = '';
  String _result6 = '';
  String _result7 = '';
  String _result8 = '';
  String _result9 = '';
  String _result10 = '';
  String _result11 = '';
  String _result12 = '';


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
        title: Text('Multiplication table'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //display
          Expanded(
              child: Container(
                child: Center(
                  child: Text('$_result1$_result2$_result3$_result4$_result5$_result6$_result7$_result8'
                      '$_result9$_result10$_result11$_result12', style: TextStyle(fontSize: 30)
                  ),
                ),
              ),
          ),
          //get input
          TextField(
            controller: _number,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter a Number',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: () {
                _number.clear();
              }, icon: Icon(Icons.clear)),
            ),
          ),
          //button
          MaterialButton(
              onPressed: () {
                setState(() {

                  int userInput = int.tryParse(_number.text) ?? 0;

                  int u1 = userInput*1;
                  _result1 = '$userInput*1 = $u1\n';

                  int u2 = userInput*2;
                  _result2 = '$userInput*2 = $u2\n';

                  int u3 = userInput*3;
                  _result3 = '$userInput*3 = $u3\n';

                  int u4 = userInput*4;
                  _result4 = '$userInput*4 = $u4\n';

                  int u5 = userInput*5;
                  _result5 = '$userInput*5 = $u5\n';

                  int u6 = userInput*6;
                  _result6 = '$userInput*6 = $u6\n';

                  int u7 = userInput*7;
                  _result7 = '$userInput*7 = $u7\n';

                  int u8 = userInput*8;
                  _result8 = '$userInput*8 = $u8\n';

                  int u9 = userInput*9;
                  _result9 = '$userInput*9 = $u9\n';

                  int u10 = userInput*10;
                  _result10 = '$userInput*10 = $u10\n';

                  int u11 = userInput*11;
                  _result11 = '$userInput*11 = $u11\n';

                  int u12 = userInput*12;
                  _result12 = '$userInput*12 = $u12\n';
                });
              },
              color: Colors.blue,
              child: Text('click',
              style: TextStyle(color: Colors.white),
              ),
          ),
        ],
      ),
    );
  }
}

