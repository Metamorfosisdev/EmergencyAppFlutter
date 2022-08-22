import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:emergency_app/providers/sizes_provider.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BackgroundGradient();
  }
}

class _BackgroundGradient extends StatelessWidget {
  const _BackgroundGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final SizesProvider sizesProvider = Provider.of<SizesProvider>(context);
    final double heightSize = (size.height) * 0.35;
    sizesProvider.headerHeight = heightSize;
    return Container(
      width: size.width,
      height: heightSize,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff526BF6), Color(0xff67ACF2)],
          stops: [0, 1],
        ),
      ),
      child: Stack(
        children: const [
          _BigPlusBackground(),
          _AsistenciaMedica(),
          _EllipsisVertical()
        ],
      ),
    );
  }
}

class _EllipsisVertical extends StatelessWidget {
  const _EllipsisVertical({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: const EdgeInsets.only(right: 30, top: 30),
        // ignore: prefer_const_constructors
        child: FaIcon(
          FontAwesomeIcons.ellipsisVertical,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}

class _AsistenciaMedica extends StatelessWidget {
  const _AsistenciaMedica({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: (Provider.of<SizesProvider>(context).headerHeight)! * 0.20,
          ),
          Text(
            'Haz solicitado',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: (Provider.of<SizesProvider>(context).headerHeight)! * 0.10,
          ),
          Text(
            'Asistencia Médica',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: (Provider.of<SizesProvider>(context).headerHeight)! * 0.05,
          ),
          const FaIcon(
            FontAwesomeIcons.plus,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _BigPlusBackground extends StatelessWidget {
  const _BigPlusBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: -90,
      left: -100,
      child: Opacity(
        opacity: 0.3,
        child: FaIcon(
          FontAwesomeIcons.plus,
          size: 300,
          color: Colors.white,
        ),
      ),
    );
  }
}
