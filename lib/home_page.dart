import 'package:flutter/material.dart';
import 'package:jobs_ui/job_card.dart';
import 'package:jobs_ui/job_results_page.dart';
import 'mini_job_card.dart';
import 'theme.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final jobResults = [
    JobCardInfo(
      jobTitle: "Senior UX Designer",
      pay: "\$40-90k/year",
      company: "Chanel Inc. LLC",
      place: "San Diego",
      img: "assets/chanel.png",
      daysLeft: 4,
    ),
    JobCardInfo(
      jobTitle: "Full-Stack Designer",
      pay: "\$30-70k/year",
      company: "Uber Technologies Inc",
      place: "San Francisco",
      img: "assets/uber.png",
      daysLeft: 9,
    ),
    JobCardInfo(
      jobTitle: "Senior UX Designer",
      pay: "\$40-90k/year",
      company: "Chanel Inc. LLC",
      place: "San Diego",
      img: "assets/chanel.png",
      daysLeft: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: theme_gray,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                        child: InkWell(
                          onTap: () => {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.home,
                              color: theme_black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "JobsUI",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/profile.jpg",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        "Good Morning Alex",
                        style:
                            TextStyle(color: theme_darkest_gray, fontSize: 16),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        "Find Your Creative Job",
                        style: TextStyle(
                            color: theme_black,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              margin: EdgeInsets.only(right: 16.0),
                              child: Material(
                                elevation: 0.5,
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                                child: Container(
                                  padding:
                                      EdgeInsets.fromLTRB(16.0, 8, 16.0, 8),
                                  child: TextField(
                                    style: TextStyle(fontSize: 20),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Search for jobs'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 60,
                              child: Material(
                                borderRadius: BorderRadius.circular(8.0),
                                color: theme_black,
                                child: InkWell(
                                  onTap: () => {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                JobResultsPage()))
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 32),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular Jobs",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            InkWell(
                              onTap: () => {},
                              child: Text(
                                "Show all",
                                style: TextStyle(
                                    color: theme_darkest_gray, fontSize: 16.0),
                              ),
                            )
                          ]),
                    ),
                    Container(
                      height: 170,
                      margin: EdgeInsets.only(bottom: 32.0),
                      padding: const EdgeInsets.only(left: 24.0),
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) => Container(
                            width: 330,
                            child: JobCard(
                              jobType: i % 2,
                              jobCardInfo: jobResults[i],
                            )),
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 16,
                          );
                        },
                        itemCount: 3,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 16.0),
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recent Jobs",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            InkWell(
                              onTap: () => {},
                              child: Text(
                                "Show all",
                                style: TextStyle(
                                    color: theme_darkest_gray, fontSize: 16.0),
                              ),
                            )
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      margin: EdgeInsets.only(bottom: 32.0),
                      child: ListView.separated(
                        primary: false,
                        shrinkWrap: true,
                        itemBuilder: (context, i) => MiniJobCard(),
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 12,
                          );
                        },
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
