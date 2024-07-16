import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Counter Screen',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),backgroundColor: Colors.deepPurpleAccent,),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      counter++;
                    });
                  },


                  child: const Text('Increase',style: TextStyle(fontSize: 30),) ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed:(){
                    setState(() {
                      counter=0;
                    });},
                  child:Text('Reset',style: TextStyle(fontSize: 30)) ),
              const SizedBox(height: 20),

              Text('Counter value: $counter', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ],

          )

      ),

    );
  }
}


