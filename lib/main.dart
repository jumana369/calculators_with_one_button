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
      title: 'Phone_dialer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Phone_dialer'),
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
  int _counter = 0;
String number="";
  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
void _addNumber(String newNumber)
{
  setState(() {
    number = number + newNumber;
  });

}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border:Border.all(color: Colors.black,
              width: 1,),
              //border:Border.fromBorderSide()
            ),
            height: 60,
              width:210,
            child: Text(number),
            //color:Colors.deepOrangeAccent
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                _addNumber("1");
              },
                  child: Text('1')),
             const SizedBox(width: 10,),
              ElevatedButton(onPressed: (){
                _addNumber("2");
              }, child: Text('2')),
              const SizedBox(width: 10,),
              ElevatedButton(onPressed: (){
                _addNumber("3");
              }, child: Text('3')),
              const SizedBox(width: 10,),
            ],

          ),
          const SizedBox(height:  10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                _addNumber("4");
              },
                  child: Text('4')),
              const SizedBox(width: 10,),
              ElevatedButton(onPressed: (){
                _addNumber("5");
              }, child: Text('5')),
              const SizedBox(width: 10,),
              ElevatedButton(onPressed: (){
                _addNumber("6");
              }, child: Text('6')),
              const SizedBox(width: 10,),
            ],

          ),
          const SizedBox(height:  10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                _addNumber("7");
              },
                  child: Text('7')),
              const SizedBox(width: 10,),

              ElevatedButton(onPressed: (){
                _addNumber("8");
              }, child: Text('8')),
              const SizedBox(width: 10,),
              ElevatedButton(onPressed: (){
                _addNumber("9");
              }, child: Text('9')),
              const SizedBox(width: 10,),
            ],

          ),
        ],
      )
    );
  }
}
