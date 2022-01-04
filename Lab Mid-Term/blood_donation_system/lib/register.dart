import 'package:blood_donation_system/dashboard.dart';
import 'package:blood_donation_system/login.dart';
import 'package:blood_donation_system/register.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  bool passwordVisible = false;
  bool isChecked = false;
  String newValueBlood = "A+";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Register with us to donate for humanity, to save humanity',
                      style: TextStyle(
                          color: Color.fromARGB(1000, 212, 47, 33),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'images/accent.png',
                      width: 99,
                      height: 4,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                Form(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Full Name',
                            hintStyle: TextStyle(color: Colors.black38),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.black38),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          obscureText: !passwordVisible,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.black38),
                            suffixIcon: IconButton(
                              color: Colors.white60,
                              splashRadius: 1,
                              icon: Icon(
                                passwordVisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color.fromARGB(1000, 212, 47, 33),
                              ),
                              onPressed: togglePassword,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          obscureText: !passwordVisible,
                          decoration: InputDecoration(
                            hintText: 'Phone',
                            hintStyle: const TextStyle(color: Colors.black38),
                            suffixIcon: IconButton(
                              color: Colors.white60,
                              splashRadius: 1,
                              icon: Icon(
                                passwordVisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color.fromARGB(1000, 212, 47, 33),
                              ),
                              onPressed: togglePassword,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        child: DropdownButtonFormField<String>(
                            alignment: Alignment.center,
                            isExpanded: true,
                            hint: const Text('Select Blood Group'),
                            onChanged: (String? changedValue) {
                              newValueBlood = changedValue.toString();
                              setState(() {
                                newValueBlood;
                              });
                            },
                            value: newValueBlood,
                            items: <String>[
                              "A+",
                              "A-",
                              "O+",
                              "O-",
                              "AB+",
                              "AB-"
                            ].map(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  alignment: Alignment.center,
                                  value: value,
                                  child: Text(
                                    value,
                                  ),
                                );
                              },
                            ).toList()),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: isChecked
                                    ? Color.fromARGB(1000, 212, 47, 33)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(4.0),
                                border: isChecked
                                    ? null
                                    : Border.all(
                                        color:
                                            Color.fromARGB(1000, 212, 47, 33),
                                        width: 1.5),
                              ),
                              width: 20,
                              height: 20,
                              child: isChecked
                                  ? const Icon(
                                      Icons.check,
                                      size: 20,
                                      color: Colors.white,
                                    )
                                  : null,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'By creating an account, you agree to our',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  'Terms & Conditions',
                                  style: TextStyle(
                                    color: Color.fromARGB(
                                      1000,
                                      212,
                                      47,
                                      33,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomButton(
                    "Register",
                    () => {
                          Navigator.pushReplacement(
                              context, _createRoute(const Dashboard()))
                        }),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Alredy have an account? ",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (
                              context,
                            ) =>
                                const Login(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Color.fromARGB(
                            1000,
                            212,
                            47,
                            33,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Container CustomButton(String value, Function action) {
  return Container(
    height: 56,
    decoration: BoxDecoration(
      color: const Color.fromARGB(1000, 212, 47, 33),
      borderRadius: BorderRadius.circular(14.0),
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          action();
        },
        borderRadius: BorderRadius.circular(14.0),
        child: Center(
          child: Text(
            value,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

Route _createRoute(Widget widget) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => widget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
