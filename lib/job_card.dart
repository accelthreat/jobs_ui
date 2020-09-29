import 'package:flutter/material.dart';
import 'package:jobs_ui/theme.dart';

import 'job_details_page.dart';

class JobCardInfo {
  JobCardInfo(
      {this.jobTitle,
      this.pay,
      this.company,
      this.place,
      this.img,
      this.daysLeft});

  final String jobTitle;
  final String pay;
  final String company;
  final String place;
  final String img;
  final int daysLeft;
}

class JobCard extends StatelessWidget {
  const JobCard({Key key, this.jobType, this.jobCardInfo}) : super(key: key);

  final int jobType;
  final JobCardInfo jobCardInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        borderRadius: BorderRadius.circular(16.0),
        color: jobType == 0 ? theme_black : Colors.white,
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
                      jobCardInfo.jobTitle,
                      style: TextStyle(
                          color: jobType == 0 ? Colors.white : theme_black,
                          fontSize: 20,
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
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Text(jobCardInfo.pay,
                        style:
                            TextStyle(color: theme_darkest_gray, fontSize: 16)),
                    Container(padding: EdgeInsets.only(right: 8.0)),
                    Material(
                        borderRadius: BorderRadius.circular(4.0),
                        color: jobType == 0 ? theme_light_gray : theme_gray,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8.0),
                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                color: jobType == 0
                                    ? theme_dark_gray
                                    : Colors.black,
                                fontSize: 14),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 36.0,
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          jobCardInfo.img,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(right: 16.0)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jobCardInfo.company,
                            style: TextStyle(
                                color: jobType == 0
                                    ? theme_dark_gray
                                    : theme_black,
                                fontSize: 16),
                          ),
                          Text(
                            jobCardInfo.place,
                            style: TextStyle(
                                color: theme_darkest_gray, fontSize: 14),
                          )
                        ],
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "${jobCardInfo.daysLeft} Days Left",
                          style: TextStyle(
                              color: jobType == 0 ? theme_red : theme_black,
                              fontSize: 14),
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
