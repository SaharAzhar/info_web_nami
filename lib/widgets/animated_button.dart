import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

// import 'color_theme.dart';

class Onhover extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final bool textHover;
  final bool textBorder;
  final bool background;
  final double fontsize;

  const Onhover(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.color,
      required this.textHover,
      required this.textBorder,
      required this.background,
      required this.fontsize});

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
          height: 30,
          width: 180,
          decoration: widget.textBorder
              ? BoxDecoration(
                  color: widget.background ? Colors.white : Colors.transparent,
                  border: _isHovered
                      ? Border.all(color: gradientGreen)
                      : Border.all(color: gradientPurple),
                  borderRadius: BorderRadius.all(Radius.circular(20)))
              : null,
          child: Row(
            children: [
              const SizedBox(width: 5),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 226, 229, 248),
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
                          width: 5.0 + spread,
                          height: 5.0 + spread,
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
              const SizedBox(width: 10),
              widget.textHover
                  ? Center(
                      child: Text(
                        widget.text,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: _isHovered ? Colors.green : widget.color,
                          fontSize: widget.fontsize,
                        ),
                      ),
                    )
                  : Center(
                      child: Text(
                        widget.text,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: widget.color,
                          fontSize: widget.fontsize,
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
