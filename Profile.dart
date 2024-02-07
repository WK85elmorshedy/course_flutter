import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                size: 35,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 23),
              child: Column(
                children: [
                  Text(
                    'Owner',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        ' 3h ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Icon(Icons.public)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Text(
              'My Post',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            const Text(
              '100',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/like.jpg',
              width: 50,
            ),
            const Spacer(
              flex: 5,
            ),
            const Text(
              '100',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Comments',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 30,
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Expanded(child: Image.asset('assets/images/singleLike.jpg')),
              const Expanded(
                child: Text(
                  'Like',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Expanded(child: Image.asset('assets/images/comment.jpg')),
              const Expanded(
                child: Text(
                  'Comment',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Expanded(child: Image.asset('assets/images/share.png')),
              const Expanded(
                child: Text(
                  'Share',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
