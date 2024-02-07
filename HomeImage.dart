import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/facebookStory.jpg'),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 15,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Center(
                  child: Text(
                    'Owner',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// Padding(
//       padding: EdgeInsetsDirectional.all(20.0),
//       child: Column(children: [
//         Container(
//             height: 150,
//             width: 100,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/facebookStory.jpg'),
//               ),
//               borderRadius: BorderRadius.circular(20),
//             )),

//         //   ClipRRect(
//         //     borderRadius: BorderRadius.circular(20),
//         //     child: Image.asset('assets/facebookStory.jpg'),
//         //   ),
//         // ]),
//         //   child: ClipRRect(
//         //     borderRadius: BorderRadius.circular(20),
//         //     child: Stack(
//         //       children: [
//         //         ClipRRect(
//         //           borderRadius: BorderRadius.circular(20),
//         //           child: Image.asset('assets/facebookStory.jpg'),
//         //         ),
//         Positioned(
//           top: 00,
//           left: 10,
//           // child: ClipRRect(
//           //  borderRadius: BorderRadius.circular(15),
//           child: const CircleAvatar(
//             backgroundColor: Colors.blue,
//             radius: 15,
//             child: Icon(
//               Icons.person,
//               color: Colors.white,
//               size: 20,
//             ),
//           ),
//           //  ),
//         ),
//         //         Positioned(
//         //           bottom: 10,
//         //           left: 40,
//         //           child: ClipRRect(
//         //             borderRadius: BorderRadius.circular(15),
//         //             child: const Center(
//         //               child: Text(
//         //                 'Owner',
//         //                 style: TextStyle(
//         //                     color: Colors.white,
//         //                     fontSize: 20,
//         //                     fontWeight: FontWeight.bold),
//         //               ),
//         //             ),
//         //           ),
//         //         ),
//         //       ],
//         //     ),
//       ]),
//     );
//   }
// }
