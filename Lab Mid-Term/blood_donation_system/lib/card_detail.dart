import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  final double size;
  final int count;
  final int percentage;
  final String title;
  final bool countLeft;

  const CardDetail(
      {Key? key,
      required this.size,
      required this.count,
      required this.percentage,
      required this.title,
      required this.countLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      height: 110,
      child: Container(
        width: MediaQuery.of(context).size.width * .6,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
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
        child: Column(
          children: <Widget>[
            Center(
              child: countLeft
                  ? const Icon(
                      Icons.bloodtype,
                      color: Colors.red,
                      size: 40.0,
                    )
                  : const Icon(
                      Icons.approval,
                      color: Colors.blue,
                      size: 40.0,
                    ),
            ),
            countLeft ? available(context) : requests(context),
            Text(
              title,
              style: const TextStyle(fontSize: 12.0, color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }

  Container available(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Center(
            child: Text(
              '$count',
              style:
                  const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          )),
          Expanded(
            child: Center(
              child: Text(
                '$percentage %',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: getPercentageColor(percentage),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container requests(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                '$percentage %',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: getPercentageColor(percentage),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text('$count',
                  style: const TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}

Color getPercentageColor(int p) {
  return p > 50.0 ? Colors.green : Colors.red;
}
