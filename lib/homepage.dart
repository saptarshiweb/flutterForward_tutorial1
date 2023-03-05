import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes App'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Add a note',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          list.add(controller.text);
                        });
                      },
                      child: const Icon(Icons.add)),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child:
                    TextField(controller: controller, maxLines: 5, minLines: 3),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Text(
                        list[index],
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
