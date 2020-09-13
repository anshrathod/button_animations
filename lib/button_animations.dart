import 'package:button_animations/constants.dart';
import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  // * @param onTap  The function that is called whenever the widget is tapped
  final GestureTapCallback onTap;
  final Widget child;
  // * @param type  There are 16 predefined themes from which you can choose from if you dont want to customize the widget yourself
  final PredefinedThemes type;
  // * @param animationCurve  The curve that the animation will follow
  final Curve animationCurve;
  // * @param enabled  To check whether the button is enabbled or not
  final bool enabled;
  // * @param isMultiColor  To check whether the button has multiple color gradient or not
  final bool isMultiColor;
  // * @param isOutline  To check whether the button has a outline or not
  final bool isOutline;
  // * @param darkShadow  To check whether the button has dark or light shadow
  final bool darkShadow;

  // * @param duration  The time that the animation takes in milliseconds
  final int duration;

  // * @param height  The height of the widget
  final double height;
  // * @param width  The width of the widget
  final double width;
  // * @param blurRadius  The radius of the blur effect of the widget
  final double blurRadius;
  // * @param borderRadius  The radius of the borders of the widget
  final double borderRadius;
  // * @param shadowHeightBottom  The height of the shadow and the animation of the widget from the bottom of the child widget
  final double shadowHeightBottom;
  // * @param shadowHeightLeft  The height of the shadow and the animation of the widget from the left of the child widget
  final double shadowHeightLeft;
  // * @param borderWidth  The width of the border of the widget
  final double borderWidth;

  // * @param borderColor  The color of the border of the widget(if type is not null, this will not work, is Outline should be true for this to work)
  final Color borderColor;
  // * @param blurColor  The color of the blur of the widget(if type is not null, this will not work)
  final Color blurColor;
  // * @param color  The color of the widget(if type is not null, this will not work)
  final Color color;
  // * @param shadowColor  The color of the shadow of the widget(if type is not null, this will not work)
  final Color shadowColor;

  // * @param colors  The list of colors for the gradient for the background of the widget(isMulticolor should be true for this to work)
  final List<Color> colors;

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
  Color shadowColor;
  Color borderColor;
  Color blurColor;
  _AnimatedButtonState({
    this.type,
    this.color,
    this.shadowColor,
    this.borderColor,
    this.blurColor,
  });

  @override
  void initState() {
    super.initState();
    // check if there is a PredefinedThemes type used in the widget
    // if yes, over-ride all the colors of the widget
    if (type != null) {
      int index = type.index;
      setState(() {
        color = definedColors[index]["color"];
        shadowColor = definedColors[index]["shadowColor"];
        blurColor = definedColors[index]["blurColor"];
        borderColor = definedColors[index]["borderColor"];
      });
    } else {
      setState(() {
        color = widget.color;
        shadowColor = widget.shadowColor;
        blurColor = widget.blurColor;
        borderColor = widget.borderColor;
      });
    }
    // initialize the top widget with the defined bottom and left height
    setState(() {
      btnPositionBottom = widget.shadowHeightBottom;
      btnPositionLeft = widget.shadowHeightLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = widget.height - btnPositionBottom;

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
      onTapDown: widget.enabled ? _tapDown : null,
      onTapUp: widget.enabled ? _tapUp : null,
      onTapCancel: widget.enabled ? _unTap : null,
    );
  }

  void _tapDown(_) {
    // when the widget is pressed make both the heights, bottom and left to zero
    setState(() {
      btnPositionBottom = 0;
      btnPositionLeft = 0;
    });
  }

  // when the widget is released after being pressed, it returns to the given heights, bottom and left
  void _tapUp(_) => _unTap();

  void _unTap() {
    setState(() {
      btnPositionLeft = widget.shadowHeightLeft;

      btnPositionBottom = widget.shadowHeightBottom;
    });
    widget.onTap();
  }

  // returns a list of color shades according to the params
  // * @param colors list of colors
  // * @param darkshadow whether to return a darker shadow or lighter shadow
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
