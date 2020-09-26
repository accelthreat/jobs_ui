import 'package:flutter/material.dart';
import 'package:jobs_ui/theme.dart';

class MiniJobCard extends StatelessWidget {
  const MiniJobCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  "assets/chanel.png",
                  height: 40,
                  width: 40,
                ),
              ),
              Container(padding: EdgeInsets.only(right: 8.0)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Senior Product Designer",
                    style: TextStyle(
                        color: theme_black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Chanel · Full Time",
                    style: TextStyle(color: theme_darkest_gray, fontSize: 10),
                  )
                ],
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "4 Days Left",
                  style: TextStyle(
                    color: theme_black,
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
