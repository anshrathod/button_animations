# Button Animations

[![pub package](https://img.shields.io/pub/v/path_provider.svg)](https://pub.dartlang.org/packages/path_provider)

[button_animations](https://pub.dev/packages/button_animations) is a package to make highly customizable [Flutter](https://flutter.dev/) widgets with 3d animations.

## Getting Started

To use this plugin, add the latest version of `button_animations` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

![Demo 1](https://raw.githubusercontent.com/anshrathod/button_animations/master/Screenshots/1.jpg) ![Demo 2](https://raw.githubusercontent.com/anshrathod/button_animations/master/Screenshots/2.jpg) ![Demo 3](https://raw.githubusercontent.com/anshrathod/button_animations/master/Screenshots/3.jpg) ![Demo 4](https://raw.githubusercontent.com/anshrathod/button_animations/master/Screenshots/4.jpg) ![Demo 5](https://raw.githubusercontent.com/anshrathod/button_animations/master/Screenshots/5.jpg) ![Demo 6](https://raw.githubusercontent.com/anshrathod/button_animations/master/Screenshots/6.jpg) ![Demo 7](https://raw.githubusercontent.com/anshrathod/button_animations/master/Screenshots/7.jpg)

|      Datatype      |     Parameter      |                                                        Description                                                         |      Default Value       | Required |
| :----------------: | :----------------: | :------------------------------------------------------------------------------------------------------------------------: | :----------------------: | :------: |
|    `function `     |       onTap        |                                 The function that is called whenever the widget is tapped                                  |            --            |   Yes    |
|     ` widget `     |       child        |                                                      The child widget                                                      |            --            |   Yes    |
| `PredefinedThemes` |        type        |      There are 16 predefined themes from which you can choose from if you dont want to customize the widget yourself       | PredefinedThemes.primary |    No    |
|      `Curve`       |   animationCurve   |                                          The curve that the animation will follow                                          |      Curves.easeIn       |    No    |
|      ` bool `      |      enabled       |                                       To check whether the button is enabbled or not                                       |           true           |    No    |
|      ` bool`       |    isMultiColor    |                               To check whether the button has multiple color gradient or not                               |          false           |    No    |
|      ` bool `      |     isOutline      |                                      To check whether the button has a outline or not                                      |          false           |    No    |
|      `bool `       |     darkshadow     |                                    To check whether the button has dark or light shadow                                    |           true           |    No    |
|      ` int `       |      duration      |                                     The time that the animation takes in milliseconds                                      |            70            |    No    |
|      `double`      |       height       |                                                  The height of the widget                                                  |            64            |    No    |
|     ` double `     |       width        |                                                  The width of the widget                                                   |           200            |    No    |
|     `double `      |     blurRadius     |                                        The radius of the blur effect of the widget                                         |            0             |    No    |
|     `double `      |    borderRadius    |                                          The radius of the borders of the widget                                           |            12            |    No    |
|     `double `      | shadowHeightBottom |                The height of the shadow and the animation of the widget from the bottom of the child widget                |            4             |    No    |
|     `double `      |  shadowHeightLeft  |                 The height of the shadow and the animation of the widget from the left of the child widget                 |            0             |    No    |
|      `double`      |    borderWidth     |                                           The width of the border of the widget                                            |            1             |    No    |
|      `Color`       |    borderColor     | The color of the border of the widget(if type is not null, this will not work, is Outline should be true for this to work) |       Colors.black       |    No    |
|      `Color`       |     blurColor      |                        The color of the blur of the widget(if type is not null, this will not work)                        |       Colors.black       |    No    |
|      `Color`       |       color        |                              The color of the widget(if type is not null, this will not work)                              |       Colors.blue        |    No    |
|      `Color`       |    shadowColor     |                       The color of the shadow of the widget(if type is not null, this will not work)                       |       Colors.black       |    No    |
|   `List<Color>`    |       colors       |     The list of colors for the gradient for the background of the widget(isMulticolor should be true for this to work)     |            []            |    No    |
