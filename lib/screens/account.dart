import 'package:flutter/material.dart';
import '../models/myappbar.dart';
import '../models/mybottombar.dart';

class Account extends StatelessWidget {
  final String username;
  final String email;
  final String password;
  const Account(
      {super.key,
      required this.username,
      required this.email,
      required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Myappbar(
            title: "Welcome $username",
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25.0, bottom: 25.0, left: 15.0, right: 15.0),
              child: Container(
                padding: const EdgeInsets.all(25.0),
                width: double.infinity,
                height: 310.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.15), // Slightly soft shadow
                      spreadRadius: 0, // No spread, just shadow around the box
                      blurRadius:
                          15, // Increased blur for an evenly diffused shadow
                      offset: const Offset(
                          0, 0), // No offset; shadow directly around the box
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // Shadow effect
                      spreadRadius: -7,
                      blurRadius: 10,
                      offset: const Offset(5, 5),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      spreadRadius: -7,
                      blurRadius: 10,
                      offset: Offset(0, -10),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align content to start
                  children: [
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center, // Align icon and text vertically
                          children: [
                            const Icon(Icons.person, color: Color(0xFF4A9A9B)),
                            const SizedBox(width: 10), // Adjusted spacing
                            const Text(
                              'Name:',
                              style: TextStyle(
                                  fontFamily: 'lato',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              username,
                              style: const TextStyle(
                                  fontFamily: 'lato',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 18.0),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Color(0xFF4A9A9B),
                                ))
                          ],
                        ),
                        const Divider(), // Divider between sections
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.email, color: Color(0xFF4A9A9B)),
                            const SizedBox(width: 10), // Adjusted spacing
                            const Text(
                              'Email:',
                              style: TextStyle(
                                  fontFamily: 'lato',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              email,
                              style: const TextStyle(
                                  fontFamily: 'lato',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 18.0),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Color(0xFF4A9A9B),
                                ))
                          ],
                        ),
                        const Divider(), // Divider between sections
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.lock, color: Color(0xFF4A9A9B)),
                            const SizedBox(width: 10), // Adjusted spacing
                            const Text(
                              'Password:',
                              style: TextStyle(
                                  fontFamily: 'lato',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              password,
                              style: const TextStyle(
                                  fontFamily: 'lato',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 18.0),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Color(0xFF4A9A9B),
                                ))
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0,
                          left: 15.0,
                          right:
                              15.0), 
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: InkWell(
                            child: Container(
                              decoration:
                                  const BoxDecoration(color: Color(0xFFD49FFC)),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Manage Allergies',
                                    style: TextStyle(
                                        fontFamily: 'lato',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 25.0),
                                  ),
                                  Icon(
                                    Icons.navigate_next_outlined,
                                    size: 50.0,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, 'allergies');
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Mybottombar(),
        ],
      ),
    );
  }
}
