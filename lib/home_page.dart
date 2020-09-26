import 'package:flutter/material.dart';
import 'package:jobs_ui/job_card.dart';
import 'mini_job_card.dart';
import 'theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: theme_gray,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(onPressed: () => {}, child: Text("Press")),
                    Text("Jobs"),
                    Image.asset(
                      "assets/avatar.png",
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Good Morning Alex",
                  style: TextStyle(color: theme_darkest_gray, fontSize: 16),
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
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 16.0),
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search for jobs'),
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
              Container(
                padding: EdgeInsets.only(bottom: 16),
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
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Text(
                          "Show all",
                          style: TextStyle(
                              color: theme_darkest_gray, fontSize: 10.0),
                        ),
                      )
                    ]),
              ),
              Container(
                height: 137,
                margin: EdgeInsets.only(bottom: 32.0),
                padding: const EdgeInsets.only(left: 24.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => JobCard(),
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
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Text(
                          "Show all",
                          style: TextStyle(
                              color: theme_darkest_gray, fontSize: 10.0),
                        ),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, i) => MiniJobCard(),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 12,
                    );
                  },
                  itemCount: 3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
