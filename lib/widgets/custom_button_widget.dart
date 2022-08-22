import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:emergency_app/providers/sizes_provider.dart';
import 'package:emergency_app/providers/custom_button_provider.dart';

class CustomButtomWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final Color? color1;
  final Color? color2;
  final Function onPressed;

  const CustomButtomWidget({
    super.key,
    this.icon,
    this.text,
    this.color1,
    this.color2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return _BackgroundCard(
      icon: icon,
      text: text,
      colors1: color1,
      colors2: color2,
      onPressed: onPressed,
    );
  }
}

class _BackgroundCard extends StatelessWidget {
  final Color? colors1;
  final Color? colors2;

  final IconData? icon;
  final String? text;

  final Function onPressed;

  const _BackgroundCard({
    Key? key,
    this.colors1,
    this.colors2,
    this.icon,
    this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color1 = colors1 ?? Colors.blue;
    Color color2 = colors2 ?? Colors.grey;
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: (Provider.of<SizesProvider>(context).headerHeight)! * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4, 6),
            blurRadius: 10,
          ),
        ],
      ),
      child: _CardContent(
        icon: icon,
        text: text,
        onPressed: onPressed,
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  final IconData? icon;
  final String? text;

  final Function onPressed;
  const _CardContent({
    Key? key,
    this.icon,
    this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconData iconData = icon ?? Icons.emergency;
    final String string = text ?? 'Emergency';

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          BackgroundIcon(data: iconData),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FaIcon(
                  iconData,
                  color: Colors.white,
                  size: 50,
                ),
                Text(
                  string,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: onPressed as void Function()?,
                  child: const FaIcon(
                    FontAwesomeIcons.angleRight,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BackgroundIcon extends StatelessWidget {
  final IconData data;
  const BackgroundIcon({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      right: -40,
      child: FaIcon(
        data,
        color: Colors.white.withOpacity(0.3),
        size: 200,
      ),
    );
  }
}
