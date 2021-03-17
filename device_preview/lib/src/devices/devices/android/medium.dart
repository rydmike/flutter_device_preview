import 'package:device_preview/src/devices/device.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:flutter/widgets.dart';

final medium = Device(
  id: 'android_medium',
  name: 'Medium',
  platform: TargetPlatform.android,
  pixelRatio: 3,
  physicalSize: Size(411, 731),
  mockup: DeviceMockup(
    screenOffset: Offset(23, 70),
    frameSize: Size(458, 855),
    frame: _frame,
    screenShape: parseSvgPathData(_screen)..fillType = PathFillType.evenOdd,
  ),
  padding: const {
    Orientation.portrait: EdgeInsets.only(
      top: 24,
    ),
    Orientation.landscape: EdgeInsets.only(
      left: 24,
    ),
  },
);

final _screen =
    'M0 16C0 7.16345 7.16344 0 16 0H395C403.837 0 411 7.16344 411 16V715C411 723.837 403.837 731 395 731H16C7.16345 731 0 723.837 0 715V16Z';

final _frame =
    '''<svg width="458" height="855" viewBox="0 0 458 855" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M394.933 0H58.7348C33.1596 0 0 16.362 0 59.157V796.855C0 816.266 10.9801 854.354 55.3336 854.354H199.778C200.84 853.567 202.731 852.417 204.719 852.417H248.459C250.21 852.417 251.977 853.567 252.981 854.354H394.933C439.68 854.354 452.629 818.002 452.629 799.238V57.4356C452.629 33.4997 438.482 0 394.933 0Z" fill="#1E1E1E"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M58.6818 4.58643C74.0933 4.58643 188.683 4.58643 393.815 4.58643C437.128 4.58643 449.579 36.8662 449.579 60.6038C449.579 75.8917 449.579 253.397 449.579 801.401C449.579 820.009 437.846 852.965 393.815 852.965C384.593 852.965 267.411 852.965 58.6818 852.965C15.0383 852.965 4.19446 818.145 4.19446 798.894C4.19446 263.863 4.19446 87.9068 4.19446 60.6038C4.19446 18.1632 33.516 4.58643 58.6818 4.58643Z" fill="black"/>
<path d="M452.63 151.079H454.917C456.181 151.079 457.205 152.103 457.205 153.367V216.285C457.205 217.549 456.181 218.573 454.917 218.573H452.63V151.079Z" fill="#181818"/>
<path d="M452.63 241.306H454.917C456.181 241.306 457.205 242.33 457.205 243.594V373.625C457.205 374.889 456.181 375.913 454.917 375.913H452.63V241.306Z" fill="#181818"/>
<rect width="76.2407" height="9.08283" rx="4.54141" transform="matrix(1 0 0 -1 187.759 45.7041)" fill="#202020"/>
<rect x="195.023" y="824.002" width="61.994" height="9.04079" rx="4.38518" fill="#202020"/>
<circle cx="169.606" cy="40.9907" r="7.00929" fill="#231E1B"/>
<circle cx="169.606" cy="40.991" r="5.77959" fill="#111F33"/>
</svg>
''';
