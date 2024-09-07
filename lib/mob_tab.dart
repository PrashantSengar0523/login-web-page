import 'package:app/widgets/logo.dart';
import 'package:flutter/material.dart';

import 'widgets/gradient.dart';

class MobTab extends StatelessWidget {
  const MobTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
             Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Stack(
                 children: [
                   ClipRRect(
                       borderRadius: BorderRadius.circular(
                           12), // To make the image corners rounded
                       child: Image.asset(
                         'images/2757734.jpg',
                         height: 400,
                         width: MediaQuery.of(context).size.width,
                         fit: BoxFit.cover,
                       )),
                   // The gradient at the bottom to make it transparent
                   Positioned(
                     bottom: 0,
                     left: 0,
                     right: 0,
                     child: Container(
                       height:
                           80, // Adjust this to control the height of the gradient
                       decoration: BoxDecoration(
                         borderRadius: const BorderRadius.only(
                           bottomLeft: Radius.circular(12),
                           bottomRight: Radius.circular(12),
                         ),
                         gradient: LinearGradient(
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                           colors: [
                             Colors.transparent,
                             Colors.black.withOpacity(
                                 0.7), // Transparent to black gradient
                           ],
                         ),
                       ),
                     ),
                   ),
                   Positioned(
                       bottom: 0,
                       left: 0,
                       right: 0,
                       child: Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Text(
                           "Explore Demo Limited's Premier Logistics and Freight Services",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize:
                                 MediaQuery.of(context).size.width * 0.025,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ))
                 ],
               ),
             ),
               const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16,),
                    width:  MediaQuery.of(context).size.width>600? MediaQuery.of(context).size.width/1.5:double.infinity ,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.grey.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: const Logo(
                            height: 45,
                            width: 45,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Welcome Back",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "We are glad to see you",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: double.infinity ,
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Username',
                              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                              hintText: 'Enter your username',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.3),
                                  width: 2.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue.withOpacity(0.4),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: double.infinity ,
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.3),
                                  width: 2.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue.withOpacity(0.4),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width:  double.infinity ,
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: SizedBox(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: AppGradients.sBP,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                },
                                child: const Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "2024 DEMO GROUP ALL RIGHTS RESERVED",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

            ],
          ),
        ),
      )
    );
  }
}