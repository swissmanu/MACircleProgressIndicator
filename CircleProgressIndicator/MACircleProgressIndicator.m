#import "MACircleProgressIndicator.h"

#define kCircleProgressIndicatorDefaultColor [UIColor grayColor]
#define kCircleProgressIndicatorDefaultStrokeWidthRatio 0.15

@interface MACircleProgressIndicator ()
-(void)setupDefaultValues;
@end

@implementation MACircleProgressIndicator

@synthesize color = _color;
@synthesize strokeWidth = _strokeWidth;
@synthesize strokeWidthRatio = _strokeWidthRatio;
@synthesize value = _value;

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupDefaultValues];
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupDefaultValues];
    }
    return self;
}

- (id)init {
    self = [super init];
    if (self) {
        [self setupDefaultValues];
    }
    return self;
}

-(void)setupDefaultValues {
    self.backgroundColor = [UIColor clearColor];
    self.color = kCircleProgressIndicatorDefaultColor;
    self.strokeWidthRatio = kCircleProgressIndicatorDefaultStrokeWidthRatio;
}


#pragma mark - Property Implementations

-(void)setValue:(float)value {
    if(value < 0.0) value = 0.0;
    if(value > 1.0) value = 1.0;
    
    _value = value;
    [self setNeedsDisplay];
}

-(void)setStrokeWidth:(CGFloat)strokeWidth {
    _strokeWidthRatio = -1.0;
    _strokeWidth = strokeWidth;
}

-(void)setStrokeWidthRatio:(CGFloat)strokeWidthRatio {
    _strokeWidth = -1.0;
    _strokeWidthRatio = strokeWidthRatio;
}


#pragma mark - Appearance Properties

-(void)setColor:(UIColor *)color {
    _color = color;
    [self setNeedsDisplay];
}


#pragma mark - Drawing

-(void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    CGPoint center = CGPointMake(rect.size.width/2, rect.size.height/2);
    float minSize = MIN(rect.size.width, rect.size.height);
    float lineWidth = _strokeWidth;
    if(lineWidth == -1.0) lineWidth = minSize*_strokeWidthRatio;
    float radius = (minSize-lineWidth)/2;
    float endAngle = M_PI*(self.value*2);
    
    CGContextSaveGState(ctx);
    CGContextTranslateCTM(ctx, center.x, center.y);
    CGContextRotateCTM(ctx, -M_PI*0.5);
    
    CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    // "Full" Background Circle:
    CGContextBeginPath(ctx);
    CGContextAddArc(ctx, 0, 0, radius, 0, 2*M_PI, 0);
    CGContextSetStrokeColorWithColor(ctx, [_color colorWithAlphaComponent:0.1].CGColor);
    CGContextStrokePath(ctx);
    
    // Progress Arc:
    CGContextBeginPath(ctx);
    CGContextAddArc(ctx, 0, 0, radius, 0, endAngle, 0);
    CGContextSetStrokeColorWithColor(ctx, [_color colorWithAlphaComponent:0.9].CGColor);
    CGContextStrokePath(ctx);
    
    CGContextRestoreGState(ctx);
}

@end
