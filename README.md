# MACircleProgressIndicator
## Overview
`MACircleProgressIndicator` is a progress indicator view for iOS 5 or newer.

## Installation
The easiest way to install `MACircleProgressIndicator` is using [CocoaPods](http://cocoapods.org/). Add the following dependency to your `Podfile` and run the `pod install` command via command line:

	pod 'MACircleProgressIndicator', '~> 1.0.0'

If you'd like to install without CocoaPods, clone this repository and extract `MACircleProgressIndicator.h` and `MACircleProgressIndicator.m` from the `CircleProgressIndicator` folder and copy them into your project.

## Customization & Demo
The view is customizable using direct property assignments or the appearance object:

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
	//appearance.strokeWidthRatio = 0.15; // default

Clone the repository and you'll have a running demonstration app ready on your machine: Open `CircleProgressIndicator.xcodeproj` with Xcode and run the App in the iPhone or iPad simulator.