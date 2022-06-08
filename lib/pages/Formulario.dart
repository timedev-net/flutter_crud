import 'package:flutter/material.dart';
import '../models/task.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final task_name = TextEditingController();
  // final email = TextEditingController();

  List<Task> tasks = [Task(description: 'Lavar roupa')];
  // List<Task> temp_tasks = [];

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List;
    print(args);
    return Scaffold(
        // resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: task_name,
                    decoration: InputDecoration(
                      labelText: 'Tarefa',
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text('Enviar'),
                  onPressed: () {
                    // print('Nome: ${task_name.text}');

                    tasks.add(Task(description: task_name.text));
                    setState(() {});
                    print(tasks[0].description);
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
                ElevatedButton(
                  onPressed: () {
                    tasks.removeLast();
                    setState(() {});
                  },
                  child: const Text('delete'),
                ),
                Container(
                  width: 300,
                  height: 300,
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(tasks[index].description),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
