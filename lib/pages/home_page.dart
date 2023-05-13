import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/widget/task_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2E3A48),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "TODO",
          style: GoogleFonts.poppins(
              color: Color(0xfffdfdfd),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TaskWidget(title: "title", date: DateTime.now()),
              Gap(15),
              TaskWidget(title: "title", date: DateTime.now()),
              Gap(15),
              TaskWidget(title: "title", date: DateTime.now()),
              Gap(15),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_rounded,
          size: 40,
          color: Color(0xfffdfdfd),
        ),
      ),
    );
  }
}
