import 'package:daily_logs/contstraints.dart';
import 'package:flutter/material.dart';

class DailyLogView extends StatefulWidget {
  const DailyLogView({super.key});

  @override
  State<DailyLogView> createState() => _DailyLogViewState();
}

class _DailyLogViewState extends State<DailyLogView> {
  TextEditingController khanaController = TextEditingController();
  TextEditingController meatController = TextEditingController();
  TextEditingController khajaController = TextEditingController();
  TextEditingController eggController = TextEditingController();
  TextEditingController othersController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Log",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: appColor,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // ignore: sort_child_properties_last
        child: const Icon(Icons.add),
        backgroundColor: appColor,
        onPressed: () {
          _showDialog();
        },
      ),
    );
  }

  // Showing Dialog
  Future<void> _showDialog() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "Add Data",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  const Divider(),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Khana",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: khanaController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              hintText: "Price", border: OutlineInputBorder()),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Meat (Masu)",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: meatController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              hintText: "Price", border: OutlineInputBorder()),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child:  Text(
                          "Khaja",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: khajaController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              hintText: "Price", border: OutlineInputBorder()),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child:  Text(
                          "Egg",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: eggController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              hintText: "Price", border: OutlineInputBorder()),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Others",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: othersController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              hintText: "Price", border: OutlineInputBorder()),
                        ),
                      )
                    ],
                  ),
                  const Divider()
                ],
              ),
            ),
            actions: [
              Center(
                  child: IconButton(
                icon: const CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 30,
                    child: Icon(Icons.done)),
                onPressed: () {},
              ))
            ],
          );
        });
  }
}

/**
 Row(
                    children: [
                      Expanded(
                        child: const Text(
                          "Meal",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                              hintText: "Price", border: OutlineInputBorder()),
                        ),
                      )
                    ],
                  ),
 */
