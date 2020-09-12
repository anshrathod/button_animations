import 'package:button_animations/constants.dart';
import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final Widget child;
  PredefinedThemes type;
  final Curve animationCurve;

  final bool enabled;
  final bool isMultiColor;
  final bool isOutline;
  final bool darkShadow;

  final int duration;

  final double height;
  final double width;
  final double blurRadius;
  final double borderRadius;
  final double shadowHeightBottom;
  final double shadowHeightLeft;
  final double borderWidth;

  Color borderColor;
  Color blurColor;
  Color color;
  Color shadowColor;

  List<Color> colors;
  AnimatedButton({
    Key key,
    @required this.onTap,
    @required this.child,
    this.enabled = true,
    this.type = PredefinedThemes.primary,
    this.color = Colors.blue,
    this.height = 64,
    this.colors,
    this.isMultiColor = false,
    this.darkShadow = true,
    this.width = 200,
    this.duration = 70,
    this.blurRadius = 0,
    this.borderRadius = 12,
    this.animationCurve = Curves.easeIn,
    this.shadowHeightBottom = 4,
    this.shadowHeightLeft = 0,
    this.isOutline = false,
    this.borderColor = Colors.black,
    this.borderWidth = 1,
    this.blurColor = Colors.black,
    this.shadowColor,
  })  : assert(child != null),
        super(key: key);

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState(
        type: this.type,
        color: this.color,
        blurColor: this.blurColor,
        borderColor: this.borderColor,
      );
}

class _AnimatedButtonState extends State<AnimatedButton> {
  double btnPositionBottom;
  double btnPositionTop;
  double btnPositionLeft;
  double btnPositionRight;
  PredefinedThemes type;
  Color color;
  Color splashColor;
  Color borderColor;
  Color blurColor;
  _AnimatedButtonState({
    this.type,
    this.color,
    this.splashColor,
    this.borderColor,
    this.blurColor,
  });

  @override
  void initState() {
    super.initState();
    if (type != null) {
      int index = type.index;
      setState(() {
        color = definedColors[index]["color"];
        splashColor = definedColors[index]["splashColor"];
        blurColor = definedColors[index]["blurColor"];
        borderColor = definedColors[index]["borderColor"];
      });
    }
    setState(() {
      btnPositionBottom = widget.shadowHeightBottom;
      btnPositionLeft = widget.shadowHeightLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = widget.height - btnPositionBottom;
    // print(this.color);
    return GestureDetector(
      child: Center(
        child: Container(
          width: widget.width + btnPositionLeft,
          height: height + btnPositionBottom,
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                child: Container(
                  height: height,
                  width: widget.width,
                  decoration: BoxDecoration(
                    gradient: widget.isMultiColor
                        ? LinearGradient(
                            colors: shadow(widget.colors, widget.darkShadow),
                          )
                        : null,
                    color: (widget.shadowColor != null)
                        ? widget.shadowColor
                        : shadow((widget.isOutline) ? [color] : [borderColor],
                            widget.darkShadow),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        widget.borderRadius,
                      ),
                    ),
                    border: widget.isOutline
                        ? Border.all(
                            color: borderColor,
                            width: widget.borderWidth,
                          )
                        : null,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: blurColor,
                        blurRadius: widget.blurRadius,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                curve: widget.animationCurve,
                duration: Duration(milliseconds: widget.duration),
                bottom: btnPositionBottom,
                left: btnPositionLeft,
                child: Container(
                  height: height,
                  width: widget.width,
                  decoration: BoxDecoration(
                    gradient: widget.isMultiColor
                        ? LinearGradient(
                            colors: widget.colors,
                          )
                        : null,
                    color: color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        widget.borderRadius,
                      ),
                    ),
                    border: widget.isOutline
                        ? Border.all(
                            color: borderColor,
                            width: widget.borderWidth,
                          )
                        : null,
                  ),
                  child: Center(
                    child: widget.child,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTapDown: widget.enabled ? _tapUp : null,
      onTapUp: widget.enabled ? _unTapOnTapUp : null,
      onTapCancel: widget.enabled ? _unTap : null,
    );
  }

  void _tapUp(_) {
    setState(() {
      btnPositionBottom = 0;
      btnPositionLeft = 0;
    });
  }

  void _unTapOnTapUp(_) => _unTap();

  void _unTap() {
    setState(() {
      btnPositionLeft = widget.shadowHeightLeft;

      btnPositionBottom = widget.shadowHeightBottom;
    });
    widget.onTap();
  }

  shadow(List<Color> colors, bool darkShadow) {
    List<Color> w = [];

    colors.forEach((color) {
      double amount = darkShadow ? 0.22 : 0.1;
      final hsl = HSLColor.fromColor(color);
      final hslDark =
          hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
      w.add(hslDark.toColor());
    });
    return (w.length == 1) ? w[0] : w;
  }
}
