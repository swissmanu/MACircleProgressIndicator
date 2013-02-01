#import <UIKit/UIKit.h>

@interface MACircleProgressIndicator : UIView

/**
 * Represents the displayed progress value. Set it to update the progress indicator.
 * Pass a float number between 0.0 and 1.0.
 */
@property (nonatomic) float value;

/**
 * The color which is used to draw the progress indicator. Use UIAppearance to
 * style according your needs.
 */
@property (nonatomic, retain) UIColor *color UI_APPEARANCE_SELECTOR;

/**
 * The stroke width ratio is used to calculate the circle thickness regarding the
 * actual size of the progress indicator view. When setting this, strokeWidth is
 * ignored.
 * Use UIAppearance to style according your needs.
 */
@property (nonatomic) CGFloat strokeWidthRatio UI_APPEARANCE_SELECTOR;

/**
 * If you'd like to specify the stroke thickness of the progress indicator circle
 * explicitly, use the strokeWidth property. When setting this, strokeWidthRatio
 * is ignored.
 * Use UIAppearance to style according your needs.
 */
@property (nonatomic) CGFloat strokeWidth UI_APPEARANCE_SELECTOR;

@end
