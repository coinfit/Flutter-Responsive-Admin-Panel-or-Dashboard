import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Myron", style: (Theme.of(context).textTheme.headline2)?.apply(color: Colors.white)),
                          if (Responsive.isMobile(context)) SizedBox(height: defaultPadding),
                          if (Responsive.isMobile(context))
                            Column(
                              children: [
                                SizedBox(height: defaultPadding),
                                TextField(
                                  // style: primaryTextStyle(),
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.orange),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.orange.shade200),
                                    ),
                                    labelText: 'Email',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                  ),
                                  cursorColor:
                                      // appStore.isDarkModeOn ? white : blackColor,
                                      Colors.white,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.done,
                                ),
                                SizedBox(height: defaultPadding),
                                TextField(
                                  // style: primaryTextStyle(),
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.orange),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.orange.shade200),
                                    ),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                  ),
                                  cursorColor:
                                      // appStore.isDarkModeOn ? white : blackColor,
                                      Colors.white,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.done,
                                ),
                                SizedBox(height: defaultPadding),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      child: Text("Forgot Password?", style: TextStyle(color: Colors.white)),
                                      onPressed: () {
                                        print("forgot password tapped");
                                      },
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        print("elevated button pressed");
                                      },
                                      child: Text("Sign In", style: (Theme.of(context).textTheme.headline6)
                                          // this is how to change color of Theme headline text
                                          // ?.apply(color: Colors.red),
                                          ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                        ],
                      ),
                    ),
                    if (!Responsive.isMobile(context)) SizedBox(width: defaultPadding),
                    // On Mobile means if the screen is less than 850 we dont want to show it
                    if (!Responsive.isMobile(context))
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sign In", style: (Theme.of(context).textTheme.headline3)?.apply(color: Colors.white)),
                            SizedBox(height: defaultPadding),
                            TextField(
                              // style: primaryTextStyle(),
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange.shade200),
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.grey),
                                filled: true,
                              ),
                              cursorColor:
                                  // appStore.isDarkModeOn ? white : blackColor,
                                  Colors.white,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                            ),
                            SizedBox(height: defaultPadding),
                            TextField(
                              // style: primaryTextStyle(),
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange.shade200),
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.grey),
                                filled: true,
                              ),
                              cursorColor:
                                  // appStore.isDarkModeOn ? white : blackColor,
                                  Colors.white,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                            ),
                            SizedBox(height: defaultPadding),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  child: Text("Forgot Password?", style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    print("forgot password tapped");
                                  },
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    print("elevated button pressed");
                                  },
                                  child: Text("Sign In", style: (Theme.of(context).textTheme.headline6)
                                      // this is how to change color of Theme headline text
                                      // ?.apply(color: Colors.red),
                                      ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
