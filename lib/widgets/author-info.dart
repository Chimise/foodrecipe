import 'package:flutter/material.dart';
import 'app-container.dart';

class AuthorInfo extends StatelessWidget {
  const AuthorInfo(
      {super.key,
      required this.profilePic,
      required this.location,
      required this.name});

  final String profilePic;
  final String location;
  final String name;

  void onFollow() {
    print('Following');
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        top: 15.0,
        child: Row(
          children: [
            Image.asset(profilePic),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/location.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            location,
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        )
                      ],
                    )
                  ]),
            )),
            ElevatedButton(
                onPressed: onFollow,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    minimumSize: const Size(60, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
                child: const Text(
                  'Follow',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ));
  }
}
