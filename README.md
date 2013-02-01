# MACircleProgressIndicator
## Overview
`MACircleProgressIndicator` is a progress indicator view for iOS 5 or newer.

![Screenshot](https://raw.github.com/swissmanu/MACircleProgressIndicator/master/screenshot.png)

## Installation
The easiest way to install `MACircleProgressIndicator` is using [CocoaPods](http://cocoapods.org/). Add the following dependency to your `Podfile` and run the `pod install` command via command line:

	pod 'MACircleProgressIndicator', '~> 1.0.0'

If you'd like to install without CocoaPods, clone this repository and extract `MACircleProgressIndicator.h` and `MACircleProgressIndicator.m` from the `MACircleProgressIndicator/` subfolder and copy them into your project.

## Usage
To update the displayed progress, just pass a float value between 0.0 to 1.0 to the `value` property:

```objective-c
MACircleProgressIndicator *indicator = [[MACircleProgressIndicator alloc] initWithFrame:CGRectMake(0, 0, 42, 42)];
indicator.value = 0.5;
```

## Customization & Demo
The view is customizable using direct property assignments or the appearance object:

```objective-c
MACircleProgressIndicator *appearance = [MACircleProgressIndicator appearance];

// The color property sets the actual color of the procress circle (how
// suprising ;) )
appearance.color = [UIColor whiteColor];

// Use the strokeWidth property to set the width of the
// circle stroke excplicitly.
//appearance.strokeWidth = 1.0;

// If you set the strokeWidthRatio, the width of the
// circle stroke gets calculated related to the actual
// size of the MACircleProgressIndicator view.
//appearance.strokeWidthRatio = 0.15; // default ratio, just for information :)
```

Clone the repository and you'll have a running demonstration app ready on your machine: Open `CircleProgressIndicator.xcodeproj` with Xcode and run the App in the iPhone or iPad simulator.
