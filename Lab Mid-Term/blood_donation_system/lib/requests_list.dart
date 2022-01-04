import 'package:blood_donation_system/request_card.dart';
import 'package:flutter/material.dart';

class RequestList extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(1000, 212, 47, 33),
        title: Text('All Request'),
      ),
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * .9,
        child: Column(
          children: <Widget>[Expanded(child: listRecentRequests())],
        ),
      )),
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
}
