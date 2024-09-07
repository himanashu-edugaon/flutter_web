import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web/widgets/custom_button.dart';
import 'package:flutter_web/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        alignment: Alignment.centerRight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/background_img.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: width < 800
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: width - 20,
                      height: height / 2,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('asset/images/main_img.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.all(15),
                        child: const Text(
                          "Explore Demo Limited's Premier Logistics and Freight Services",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                SvgPicture.asset("asset/images/Logo.svg",
                                    height: 30),
                                Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: SvgPicture.asset(
                                      "asset/images/DEMO.svg",
                                      height: 20),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            margin: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: Padding(
                              padding: const EdgeInsets.all(40),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundColor: const Color(0xffE9F5FE),
                                    child: SvgPicture.asset(
                                        "asset/images/Logo.svg",
                                        height: 48),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    "Welcome Back",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "We are glad to see you",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff666666)),
                                  ),
                                  const SizedBox(height: 50),
                                  CustomTextField(
                                    controller: _usernameController,
                                    labelText: 'Username',
                                  ),
                                  const SizedBox(height: 10),
                                  CustomTextField(
                                    controller: _passwordController,
                                    labelText: 'Password',
                                  ),
                                  const SizedBox(height: 10),
                                  CustomButton(
                                    onPressed: () {},
                                    text: 'LOGIN',
                                  ),
                                  const SizedBox(height: 10),
                                  const Text("Forgot Password?"),
                                ],
                              ),
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage("asset/images/Vector.png"),
                                width: 15,
                                height: 15,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "2024 DEMO GROUP. All Rights Reserved",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Row(
                children: [
                  Container(
                    width: width / 2 - 20,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('asset/images/main_img.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.all(15),
                      child: const Text(
                        "Explore Demo Limited's Premier Logistics and Freight Services",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width / 2 - 40,
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              SvgPicture.asset("asset/images/Logo.svg",
                                  height: 30),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: SvgPicture.asset(
                                    "asset/images/DEMO.svg",
                                    height: 20),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          margin: const EdgeInsets.only(
                              top: 40, left: 40, right: 40),
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundColor: const Color(0xffE9F5FE),
                                  child: SvgPicture.asset(
                                      "asset/images/Logo.svg",
                                      height: 48),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Welcome Back",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "We are glad to see you",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff666666)),
                                ),
                                const SizedBox(height: 50),
                                CustomTextField(
                                  controller: _usernameController,
                                  labelText: 'Username',
                                ),
                                const SizedBox(height: 10),
                                CustomTextField(
                                  controller: _passwordController,
                                  labelText: 'Password',
                                ),
                                const SizedBox(height: 10),
                                CustomButton(
                                  onPressed: () {},
                                  text: 'LOGIN',
                                ),
                                const SizedBox(height: 10),
                                const Text("Forgot Password?"),
                              ],
                            ),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("asset/images/Vector.png"),
                              width: 15,
                              height: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "2024 DEMO GROUP. All Rights Reserved",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
