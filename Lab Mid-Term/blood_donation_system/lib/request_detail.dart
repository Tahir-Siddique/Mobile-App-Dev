import 'package:flutter/material.dart';

class RequestDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text('Request Detail'),
        backgroundColor: Color.fromARGB(1000, 212, 47, 33),
        shadowColor: Colors.black45,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    "Request Uploaded By : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Tahir Siddique",
                    softWrap: true,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    "Requested For : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "NAME_PATIENT",
                    softWrap: true,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    "Location : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "LOCATION",
                    softWrap: true,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Description:",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    "Requirment : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "URGENT",
                    softWrap: true,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .85,
              height: 45,
              margin: const EdgeInsets.all(10),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(1000, 255, 255, 255),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(1000, 212, 47, 33),
                  ),
                ),
                child: const Text("Donate Blood Now!!"),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
