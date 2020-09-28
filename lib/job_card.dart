import 'package:flutter/material.dart';
import 'package:jobs_ui/theme.dart';

import 'job_details_page.dart';

class JobCard extends StatelessWidget {
  const JobCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        borderRadius: BorderRadius.circular(16.0),
        color: theme_black,
        child: InkWell(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => JobDetailsPage())),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Senior UX Designer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(padding: EdgeInsets.only(right: 16.0)),
                    Spacer(),
                    Icon(
                      Icons.bookmark,
                      color: theme_light_gray,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("\$40-90k/year",
                        style:
                            TextStyle(color: theme_darkest_gray, fontSize: 10)),
                    Container(padding: EdgeInsets.only(right: 8.0)),
                    Material(
                        borderRadius: BorderRadius.circular(4.0),
                        color: theme_light_gray,
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            "Full Time",
                            style:
                                TextStyle(color: theme_dark_gray, fontSize: 10),
                          ),
                        ))
                  ],
                ),
                Container(padding: EdgeInsets.only(bottom: 16.0)),
                SizedBox(
                  height: 40,
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
                            "Chanel Inc. LLC",
                            style:
                                TextStyle(color: theme_dark_gray, fontSize: 12),
                          ),
                          Text(
                            "San Diego",
                            style: TextStyle(
                                color: theme_darkest_gray, fontSize: 10),
                          )
                        ],
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "4 Days Left",
                          style: TextStyle(color: theme_red, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
