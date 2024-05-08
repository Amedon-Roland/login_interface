import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    ThemeData theme = Theme.of(context);

    return Material(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  "assets/images/photo.jpg",
                  fit: BoxFit.cover,
                )),
                Positioned(
                  child: Text(
                    'Nhome',
                    style: theme.textTheme.bodySmall,
                  ),
                  top: 80,
                  left: 30,
                ),
                Positioned(
                  child: Text(
                    'Discover your Dream House',
                    style: theme.textTheme.bodyLarge,
                    maxLines: 2,
                  ),
                  bottom: 50,
                  left: 30,
                  width: size.width - 100,
                )
              ],
            ),
            width: size.width,
            height: size.height / 2,
          ),
          //SizedBox(height: 20),
          SizedBox(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: Size(size.width / 2.5, 50)),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(size.width / 2.5, 50)),
                      onPressed: () {},
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Divider(
                          color: Colors.grey,
                          height: 2,
                        ),
                        height: 5,
                        width: size.width * 0.30,
                      ),
                      Text('or login with'),
                      SizedBox(
                        child: Divider(
                          color: Colors.grey,
                          height: 2,
                        ),
                        height: 5,
                        width: size.width * 0.30,
                      ),
                      //Text(data)
                    ],
                  ),
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SignWithButton(
                      size: size,
                      asset: "assets/images/search.png",
                      label: "Continue with google",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SignWithButton(
                      size: size,
                      asset: "assets/images/apple.png",
                      label: "Continue with Apple",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SignWithButton(
                      size: size,
                      asset: "assets/images/facebook.png",
                      label: "Continue with Facebook",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
            width: size.width,
            height: size.height / 2,
          ),
        ],
      ),
    );
  }
}

class SignWithButton extends StatelessWidget {
  const SignWithButton({
    super.key,
    required this.size,
    required this.asset,
    required this.label,
  });

  final Size size;
  final String asset;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black26,
      height: 50,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          // color: Colors.black26,
          borderRadius: BorderRadius.circular(60),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            asset,
            width: 27.5,
            height: 27.5,
          ),
          Text(
            label,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
