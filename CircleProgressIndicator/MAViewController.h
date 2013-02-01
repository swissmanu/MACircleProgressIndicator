//
//  MAViewController.h
//  CircleProgressIndicator
//
//  Created by Manuel Alabor on 01.02.13.
//  Copyright (c) 2013 Manuel Alabor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MACircleProgressIndicator.h"

@interface MAViewController : UIViewController
@property (strong, nonatomic) IBOutlet MACircleProgressIndicator *smallProgressIndicator;
@property (strong, nonatomic) IBOutlet MACircleProgressIndicator *largeProgressIndicator;

- (IBAction)onIncrease:(id)sender;
- (IBAction)onDecrease:(id)sender;
@end
