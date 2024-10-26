import 'package:daily_logs/contstraints.dart';
import 'package:daily_logs/resources/month_list.dart';
import 'package:daily_logs/view/daily_log_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Email_Id:",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.person,
          color: Colors.white,
        ),
        backgroundColor: appColor,
      ),
      body: ListView.builder(
        itemCount: ListOfMonths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 7, right: 7),
            child: SizedBox(
              height: size.height / 8,
              width: size.width,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DailyLogView()));
                },
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      ListOfMonths[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
