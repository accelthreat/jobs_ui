import 'package:flutter/material.dart';
import 'package:jobs_ui/theme.dart';

class JobDetailsPage extends StatefulWidget {
  JobDetailsPage({Key key}) : super(key: key);

  @override
  _JobDetailsPageState createState() => _JobDetailsPageState();
}

class _JobDetailsPageState extends State<JobDetailsPage> {
  final tabs = ["Description", "Company", "Reviews"];

  int tabVal = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(top: 16.0, left: 16.0),
          child: Material(
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(width: 0.5, color: theme_dark_gray)),
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
      ),
      body: Container(
        color: theme_gray,
        child: ListView(padding: EdgeInsets.only(top: 0), children: [
          Container(
            height: 200,
            child: Image.asset(
              "assets/job_bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Material(
              elevation: .5,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0)),
              color: Colors.white,
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
                              color: theme_black,
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
                            style: TextStyle(
                                color: theme_darkest_gray, fontSize: 10)),
                        Container(padding: EdgeInsets.only(right: 8.0)),
                        Material(
                            borderRadius: BorderRadius.circular(4.0),
                            color: theme_gray,
                            child: Container(
                              padding: EdgeInsets.all(4.0),
                              child: Text(
                                "Full Time",
                                style:
                                    TextStyle(color: theme_black, fontSize: 10),
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
                                    TextStyle(color: theme_black, fontSize: 12),
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
                              style:
                                  TextStyle(color: theme_black, fontSize: 10),
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
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List<Widget>.generate(
                  3,
                  (index) => Container(
                        child: ChoiceChip(
                          backgroundColor: Colors.white,
                          selectedColor: theme_black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          label: Text(
                            tabs[index],
                            style: TextStyle(
                              color:
                                  index == tabVal ? Colors.white : theme_black,
                              fontSize: 12,
                            ),
                          ),
                          selected: index == tabVal,
                          onSelected: (bool selected) {
                            setState(() {
                              tabVal = index;
                            });
                          },
                        ),
                      )),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                elevation: 0.5,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Qualifications",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: theme_black)),
                      SizedBox(height: 8),
                      Text(
                        "• Three or more years of UX design experience. Preference will be given to candidates who have experience designing complex solutions",
                        style: TextStyle(color: theme_light_gray, fontSize: 10),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "• Three or more years of UX design experience. Preference will be given to candidates who have experience designing complex solutions",
                        style: TextStyle(color: theme_light_gray, fontSize: 10),
                      )
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 16,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 24)
                  .add(EdgeInsets.only(bottom: 24.0)),
              child: Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                elevation: 0.5,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("About the Job",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: theme_black)),
                      SizedBox(height: 8),
                      Text(
                        "• Three or more years of UX design experience. Preference will be given to candidates who have experience designing complex solutions",
                        style: TextStyle(color: theme_light_gray, fontSize: 10),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "• Three or more years of UX design experience. Preference will be given to candidates who have experience designing complex solutions",
                        style: TextStyle(color: theme_light_gray, fontSize: 10),
                      )
                    ],
                  ),
                ),
              )),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Row(
          children: [
            Material(
              borderRadius: BorderRadius.circular(8.0),
              elevation: 1,
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: () => {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.bookmark,
                    color: theme_black,
                  ),
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Text(
                  "Apply Now",
                  style: TextStyle(color: Colors.white),
                ),
                color: theme_black,
                onPressed: () => {},
              ),
            )
          ],
        ),
      )),
    ));
  }
}
