#import <UIKit/UIKit.h>

@interface MACircleProgressIndicator : UIView

@property (nonatomic) float value;
@property (nonatomic, retain) UIColor *color UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGFloat strokeWidthRatio UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGFloat strokeWidth UI_APPEARANCE_SELECTOR;


@end
