import 'package:flutter/material.dart';
import 'package:protfolio_website/extension_methods.dart';
import 'package:protfolio_website/presentation/globals/utils.dart';
import 'package:protfolio_website/presentation/widgets/longbar_button.dart';

import '../globals/colors.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final w = screenWidth(context);
    const h = 830.0;
    return Container(
      height: h,
      width: w,
      padding: screenPadding,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            top: 0,
            right: 0,
            child: Text(
              'ABOUT ME',
              style: Styles.headlineLarge,
            ),
          ),
          Align(
            alignment: const Alignment(0.625, 0.0),
            child: SizedBox(
              width: 280,
              height: 800,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 280,
                    height: 360,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/cover_photo.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(150, 200),
                        right: Radius.elliptical(150, 200),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  space80v,
                  SizedBox(
                    width: 280,
                    child: Text(
                      'This is not very optimized as it builds the entire tree any time anything changes, however it does show the basics of how you can easily bind a ChangeNotifier to the tree and trigger rebuilds in a very simple way.',
                      style: Styles.bodyMedium(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: w * 0.4,
            padding: const EdgeInsets.only(left: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const Alignment(-0.8, -0.8),
                  child: Text(
                    'THE STORY I WANT\n   TO WRITE',
                    style: Styles.headlineSmall(primary),
                  ),
                ),
                space40v,
                Text(
                  'I beleive that every man is given a pen at birth, with which he can write his own fate. Would it not be a waste to never use it? Therefore, I am working...learning to use that pen, and I will keep trying until from the very misery of my failures is born something beautiful. Something that inspires others to push their limits, and persuades me to yet again drown myself into the filth of this world.\nI have an unrest in me, a fire that is often reduced to a single flare but yet somehow manages to recover its energy and burn brighter than ever.\nI want this fire to live, I want to jump in it with my dreams of revolution and wait petiently for it to clear a path for me. A path that leads to an unseen end, an epilogue written with no regrets.',
                  textAlign: TextAlign.center,
                  style: Styles.bodyMedium(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class CoverPhoto extends StatefulWidget {
//   const CoverPhoto({
//     super.key,
//     required this.overlayColor,
//   });

//   final Color overlayColor;

//   @override
//   State<CoverPhoto> createState() => _CoverPhotoState();
// }

// const double _scaleFactor = 1.025;

// class _CoverPhotoState extends State<CoverPhoto> {
//   final Matrix4 overlayHoverTransform = Matrix4.identity()
//     ..translate(280 * _scaleFactor)
//     ..scale(_scaleFactor);
//   bool isHovering = false;
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => _setIsHovering(true),
//       onExit: (_) => _setIsHovering(false),
//       child: AnimatedContainer(
//         width: 280,
//         height: 360,
//         duration: d200,
//         curve: Curves.easeOutCubic,
//         decoration: BoxDecoration(
//           boxShadow: [
//             // BoxShadow(
//             //   offset:
//             //       isHovering ? const Offset(-13, 13) : const Offset(-12, 12),
//             //   blurRadius: isHovering ? 20.0 : 4.0,
//             //   color: isHovering ? primaryMidLight.withOpacity(0.3) : primaryMidLight.withOpacity(0.1),
//             // ),
//             // BoxShadow(
//             //   offset: isHovering ? const Offset(9, -9) : const Offset(8, -8),
//             //   blurRadius: isHovering ? 20.0 : 4.0,
//             //   color: isHovering ? primaryMidLight.withOpacity(0.3) : primaryMidLight.withOpacity(0.1),
//             // ),
//             // BoxShadow(
//             //   blurRadius: isHovering? 8.0: 4.0,
//             //   color: primaryLight.withOpacity(0.5),
//             // ),
//           ],
//         ),
//         child: ClipRRect(
//           clipBehavior: Clip.hardEdge,
//           child: Stack(
//             clipBehavior: Clip.none,
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 width: 280,
//                 height: 360,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(
//                       'assets/images/cover_photo.jpeg',
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               AnimatedContainer(
//                   width: 280,
//                   height: 360,
//                   duration: d150,
//                   curve: Curves.easeOutCubic,
//                   color: widget.overlayColor,
//                   transform:
//                       isHovering ? overlayHoverTransform : Matrix4.identity()),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _setIsHovering(bool val) {
//     setState(() {
//       isHovering = val;
//     });
//   }
// }
