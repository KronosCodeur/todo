import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({Key? key, required this.title, required this.date})
      : super(key: key);
  final String title;
  final DateTime date;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xff2E3A48),
        borderRadius: BorderRadius.circular(5),
      ),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                    color: Color(0xfffdfdfd),
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Text(
                date.toString().substring(0, 16),
                style: GoogleFonts.poppins(
                    color: Color(0xfffdfdfd).withOpacity(0.5),
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.done_rounded,
                  size: 30,
                  color: Color(0xfffdfdfd),
                ),
              ),
              Gap(5),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.add_circle,
                  size: 30,
                  color: Color(0xff1772ff),
                ),
              ),
              Gap(5),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.delete_rounded,
                  size: 30,
                  color: Color(0xffff0000),
                ),
              ),
              Gap(5),
            ],
          )
        ],
      ),
    );
  }
}
