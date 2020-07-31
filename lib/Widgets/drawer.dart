import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDrawer extends StatelessWidget {
  final numOfQues;
  final changeIndex;
  MainDrawer(this.numOfQues, this.changeIndex);

  Widget buildListTile(var context, String title, var quesId) {
    return ListTile(
      title: Text(
        '$title',
        style: GoogleFonts.quando(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        changeIndex(quesId);
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'TechFest Olympiad',
              style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 120 - 20,
            child: ListView.builder(
              itemBuilder: (cnt, index) {
                if (index == numOfQues)
                  return buildListTile(context, 'Submit', index);
                else {
                  return buildListTile(context, 'Question ${index + 1}', index);
                }
              },
              itemCount: numOfQues + 1,
            ),
          )
        ],
      ),
    );
  }
}
