import 'package:blood_donation_system/card_detail.dart';
import 'package:blood_donation_system/profile.dart';
import 'package:blood_donation_system/request_card.dart';
import 'package:blood_donation_system/request_donation.dart';
import 'package:blood_donation_system/requests_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<RequestCard> requests = const [
    RequestCard(
      requirement: "URGENT",
      bloodGroup: "O-",
      by: "Tahir",
      age: '25',
      gender: 'Male',
      distance: '24km',
    ),
    RequestCard(
      requirement: "URGENT",
      bloodGroup: "B+",
      by: "Tahir",
      age: '25',
      gender: 'Male',
      distance: '24km',
    ),
    RequestCard(
      requirement: "URGENT",
      bloodGroup: "B-",
      by: "Tahir",
      age: '25',
      gender: 'Male',
      distance: '24km',
    ),
    RequestCard(
      requirement: "URGENT",
      bloodGroup: "O+",
      by: "Tahir",
      age: '25',
      gender: 'Male',
      distance: '24km',
    ),
    RequestCard(
      requirement: "URGENT",
      bloodGroup: "A+",
      by: "Tahir",
      age: '25',
      gender: 'Male',
      distance: '24km',
    ),
    RequestCard(
      requirement: "URGENT",
      bloodGroup: "AB+",
      by: "Tahir",
      age: '25',
      gender: 'Male',
      distance: '24km',
    ),
    RequestCard(
      requirement: "URGENT",
      bloodGroup: "B-",
      by: "Tahir",
      age: '25',
      gender: 'Male',
      distance: '24km',
    )
  ];

  @override
  Widget build(BuildContext context) {
    const linearGradient = LinearGradient(colors: [
      Color.fromARGB(1000, 157, 37, 24),
      Color.fromARGB(1000, 212, 47, 33),
    ]);

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .25,
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(gradient: linearGradient),
              ),
            ],
          ),
          appBar(context),
          detailsContainer(context),
          bloodRequestList(context),
        ],
      ),
    );
  }

  Container bloodRequestList(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 200, right: 20.0, left: 20.0),
      child: Column(
        children: <Widget>[
          rowRecentRequests(),
          Expanded(child: listRecentRequests())
        ],
      ),
    );
  }

  ListView listRecentRequests() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        itemCount: requests.length,
        itemBuilder: (BuildContext context, int index) {
          return RequestCard(
            requirement: requests[index].requirement,
            bloodGroup: requests[index].bloodGroup,
            by: requests[index].by,
            age: requests[index].age,
            gender: requests[index].gender,
            distance: requests[index].distance,
          );
        });
  }

  Row rowRecentRequests() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Recent Requests",
            style: TextStyle(color: Colors.black54, fontSize: 17.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            onPressed: () =>
                {Navigator.push(context, _createRoute(RequestList()))},
            child: const Text(
              "View All",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
          ),
        )
      ],
    );
  }

  SizedBox appBar(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .08,
            height: MediaQuery.of(context).size.width * .08,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
              tooltip: "Request For Blood",
              onPressed: () => {
                Navigator.push(context, _createRoute(const RequestDonation()))
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .75,
            alignment: Alignment.center,
            child: const Text(
              "Blood Requests",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .08,
            height: MediaQuery.of(context).size.width * .08,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
                tooltip: "Profile",
                onPressed: () => {
                      Navigator.push(
                          context, _createRoute(const ProfileScreen()))
                    },
                icon: const Icon(
                  Icons.supervised_user_circle_outlined,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }

  Container detailsContainer(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .25 / 2,
        right: 20.0,
        left: 20.0,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .20,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                CardDetail(
                  size: 150,
                  title: 'Available',
                  count: 126,
                  percentage: 22,
                  countLeft: true,
                ),
                CardDetail(
                  size: 150,
                  title: 'Requests',
                  count: 248,
                  percentage: 56,
                  countLeft: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute(Widget widget) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => widget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
