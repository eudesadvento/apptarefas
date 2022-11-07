import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Lista de Tarefas'),
          ),
          body: ListView(
            children: [
              Task(
                "aprender flutter todos os dias até aprender ",
              ),
              Task(
                'Mercado forex ás 10h',
              ),
              Task(
                "Lição da escola sabatina",
              ),
              Task(
                "Orar",
              ),
              Task(
                "eudes 3",
              ),
              Task(
                "eudes 3",
              ),
            ],
          )),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;

  const Task(
    this.nome, {
    Key? key,
  }) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Container(
                      width: 200,
                      child: Text(
                        widget.nome,
                        style: TextStyle(
                            fontSize: 24, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nivel++;
                        });
                      },
                      child: Icon(
                        Icons.arrow_drop_up,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: nivel/10,

                      ),
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'nivel: $nivel ',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
