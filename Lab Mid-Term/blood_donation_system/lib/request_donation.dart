import 'package:flutter/material.dart';

class RequestDonation extends StatefulWidget {
  const RequestDonation({Key? key}) : super(key: key);

  @override
  _RequestDonationState createState() => _RequestDonationState();
}

class _RequestDonationState extends State<RequestDonation> {
  String newValue = "URGENT";
  String newValueBlood = "A+";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1000, 212, 47, 33),
        title: const Text('Request Donation'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Patient Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.supervised_user_circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.location_pin,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.message_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * .9,
              child: DropdownButton<String>(
                  icon: const Icon(
                    Icons.request_quote,
                    color: Colors.red,
                  ),
                  isExpanded: true,
                  hint: const Text('Select Requirement'),
                  onChanged: (String? changedValue) {
                    newValue = changedValue.toString();
                    setState(() {
                      newValue;
                    });
                  },
                  value: newValue,
                  items: <String>["URGENT", "REQUIRED"].map((String value) {
                    return DropdownMenuItem<String>(
                      alignment: Alignment.centerLeft,
                      value: value,
                      child: Text(
                        value,
                      ),
                    );
                  }).toList()),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * .9,
              child: DropdownButton<String>(
                  icon: const Icon(
                    Icons.request_quote,
                    color: Colors.red,
                  ),
                  isExpanded: true,
                  hint: const Text('Select Blood Group'),
                  onChanged: (String? changedValue) {
                    newValueBlood = changedValue.toString();
                    setState(() {
                      newValueBlood;
                    });
                  },
                  value: newValueBlood,
                  items: <String>["A+", "A-", "O+", "O-", "AB+", "AB-"].map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        alignment: Alignment.centerLeft,
                        value: value,
                        child: Text(
                          value,
                        ),
                      );
                    },
                  ).toList()),
            ),
            Container(
              color: const Color.fromARGB(1000, 212, 47, 33),
              margin: const EdgeInsets.all(15),
              child: TextButton(
                onPressed: () => {},
                child: const Text(
                  "Upload Request",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
