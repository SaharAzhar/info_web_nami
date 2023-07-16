// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'components.dart';

// class HoverIconAnimation extends StatefulWidget {
//   @override
//   _HoverIconAnimationState createState() => _HoverIconAnimationState();
// }

// class _HoverIconAnimationState extends State<HoverIconAnimation> {
//   bool _isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) {
//         setState(() {
//           _isHovered = true;
//         });
//       },
//       onExit: (_) {
//         setState(() {
//           _isHovered = false;
//         });
//       },
//       child: AnimatedSwitcher(
//         duration: Duration(milliseconds: 300),
//         child: _isHovered
//             ? Container(
//                 padding: EdgeInsets.all(5.0),
//                 decoration:
//                     BoxDecoration(shape: BoxShape.circle, color: gradientGreen),
//                 child: const FaIcon(
//                   FontAwesomeIcons.arrowRight,
//                   color: Colors.white,
//                   size: 20,
//                 ),
//               )
//             : const FaIcon(
//                 FontAwesomeIcons.solidCircleDot,
//                 color: Colors.white54,
//                 size: 20,
//               ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'color_theme.dart';

class Onhover extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const Onhover({super.key, required this.onPressed, required this.text});

  @override
  OnhoverState createState() => OnhoverState();
}

class OnhoverState extends State<Onhover> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 1.2).animate(_animationController);
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
      if (_isHovered) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          width: 200.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              const SizedBox(width: 5),
              Container(
                width: 40.0,
                height: 40.0,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 22, 38, 158),
                  shape: BoxShape.circle,
                ),
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    final double spread = 100.0 *
                        (_scaleAnimation.value -
                            1); // Adjust the spread as per your needs
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 10.0 + spread,
                          height: 10.0 + spread,
                          decoration: BoxDecoration(
                            color: _isHovered
                                ? Colors.green
                                : const Color(0XFF5E74FF),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Positioned(
                          child: Opacity(
                            opacity: _isHovered ? _opacityAnimation.value : 0.0,
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1.0, 0.0),
                                end: Offset.zero,
                              ).animate(_animationController),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(width: 20),
              Center(
                child: Text(
                  'Contact Us',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: _isHovered ? Colors.green : Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
