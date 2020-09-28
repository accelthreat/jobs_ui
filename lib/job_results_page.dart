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
                  Material(
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
                  Text(
                    "Jobs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(width: 40.0)
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
                        child: Container(
                          margin: EdgeInsets.only(right: 16.0),
                          child: Material(
                            elevation: 0.5,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                              child: TextField(
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'UI Designer'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
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
                          fontSize: 14.0, fontWeight: FontWeight.bold),
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
                              fontSize: 12,
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
                      itemBuilder: (context, i) => JobCard(),
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 16,
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
