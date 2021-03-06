import 'package:flutter/material.dart';
import 'package:jobs_ui/theme.dart';

import 'job_card.dart';

class ChipData {
  ChipData(this.name, this.selected);
  String name;
  bool selected;
}

class JobResultsPage extends StatefulWidget {
  final chips = [
    ChipData("UI Designer", true),
    ChipData("UX Designer", false),
    ChipData("Product", false),
    ChipData("Mock Designer", false)
  ];
  @override
  _JobResultsPageState createState() => _JobResultsPageState();
}

class _JobResultsPageState extends State<JobResultsPage> {
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
      daysLeft: 67,
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
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
                        onTap: () => {Navigator.of(context).pop()},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: theme_black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "JobsUI",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(width: 60.0)
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          margin: EdgeInsets.only(right: 16.0),
                          child: Material(
                            elevation: 0.5,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(16.0, 8, 16.0, 8),
                              child: TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'UI Designer'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 60,
                          child: Material(
                            borderRadius: BorderRadius.circular(8.0),
                            color: theme_black,
                            child: InkWell(
                              onTap: () => {},
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
                    ]),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      "32 Job Opportunity Found",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(bottom: 32.0),
                    padding: const EdgeInsets.only(left: 24.0),
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) => FilterChip(
                        padding: EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        checkmarkColor: Colors.green,
                        selected: widget.chips[i].selected,
                        onSelected: (selected) {
                          setState(() {
                            widget.chips[i].selected = selected;
                          });
                        },
                        label: Text(
                          widget.chips[i].name,
                          style: TextStyle(
                              fontSize: 16,
                              color: widget.chips[i].selected
                                  ? Colors.white
                                  : theme_black),
                        ),
                        selectedColor: theme_black,
                        backgroundColor: Colors.white,
                      ),
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 16,
                        );
                      },
                      itemCount: widget.chips.length,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 32.0),
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: ListView.separated(
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (context, i) => JobCard(
                        jobType: i % 2,
                        jobCardInfo: jobResults[i],
                      ),
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 24,
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
