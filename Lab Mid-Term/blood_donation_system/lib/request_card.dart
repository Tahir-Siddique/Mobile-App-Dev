import 'package:blood_donation_system/request_detail.dart';
import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {
  final String requirement;
  final String bloodGroup;
  final String by;
  final String age;
  final String gender;
  final String distance;
  const RequestCard(
      {Key? key,
      required this.requirement,
      required this.bloodGroup,
      required this.by,
      required this.age,
      required this.gender,
      required this.distance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const linearGradient = LinearGradient(colors: [
      Color.fromARGB(1000, 38, 215, 1),
      Color.fromARGB(1000, 149, 249, 133),
    ]);
    const linearGradient2 = LinearGradient(colors: [
      Color.fromARGB(1000, 157, 37, 24),
      Color.fromARGB(1000, 212, 47, 33),
    ]);
    return TextButton(
        onPressed: () =>
            {Navigator.push(context, _createRoute(RequestDetail()))},
        child: Container(
          margin: const EdgeInsets.all(12),
          height: 130,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 80.0,
                width: 70.0,
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                        gradient: requirement == "URGENT"
                            ? linearGradient2
                            : linearGradient,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        requirement,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 60,
                      alignment: Alignment.center,
                      child: Text(
                        bloodGroup,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 120.0,
                width: MediaQuery.of(context).size.width * .57,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      by,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text('$age • $gender • $distance '),
                  ],
                ),
              ),
            ],
          ),
        ));
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
