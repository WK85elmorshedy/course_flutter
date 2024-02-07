import 'package:assigment2_p1/screens/HomeScreen/story_list.dart';
import 'package:flutter/material.dart';
import 'scroll.dart';

// import 'Profile.dart';
// import 'HomeImage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4267B2),
          title: // const Center(
              //child:
              Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          // ),
        ),
        body:
            // Column(
            //   children: [
            //     HomeImage(),
            //     SizedBox(
            //       height: 5,
            //     ),
            //     Profile(),
            //   ],
            // ),

            const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: StoryList(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 5,
              ),
            ),
            SliverToBoxAdapter(
              child: HomeScroll(),
            ),
          ],
        ));
  }
}
