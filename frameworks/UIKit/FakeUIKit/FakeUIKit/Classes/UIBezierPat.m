
#import "UIBezierPath.h"

@implementation UIBezierPath

+ (UIBezierPath *)bezierPath
{
    return nil;
}

+ (UIBezierPath *)bezierPathWithRect:(CGRect)rect
{
    return nil;
}

+ (UIBezierPath *)bezierPathWithOvalInRect:(CGRect)rect
{
    return nil;
}

+ (UIBezierPath *)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius
{
    return nil;
}

+ (UIBezierPath *)bezierPathWithRoundedRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii
{
    return nil;
}

+ (UIBezierPath *)bezierPathWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise
{
    return nil;
}

+ (UIBezierPath *)bezierPathWithCGPath:(CGPathRef)CGPath
{
    return nil;
}

- (CGPathRef)CGPath NS_RETURNS_INNER_POINTER CF_RETURNS_NOT_RETAINED
{
    return (CGPathRef){};
}

- (void)moveToPoint:(CGPoint)point
{
    
}

- (void)addLineToPoint:(CGPoint)point
{
    
}

- (void)addCurveToPoint:(CGPoint)endPoint controlPoint1:(CGPoint)controlPoint1 controlPoint2:(CGPoint)controlPoint2
{
    
}

- (void)addQuadCurveToPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint
{
    
}

- (void)addArcWithCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise
{
    
}

- (void)closePath
{
    
}

- (void)removeAllPoints
{
    
}

- (void)appendPath:(UIBezierPath *)bezierPath
{
    
}

- (UIBezierPath *)bezierPathByReversingPath
{
    return nil;
}

- (void)applyTransform:(CGAffineTransform)transform
{
    
}

- (BOOL)containsPoint:(CGPoint)point
{
    return 0;
}

- (void)setLineDash:(const CGFloat *)pattern count:(NSInteger)count phase:(CGFloat)phase
{
    
}

- (void)getLineDash:(CGFloat *)pattern count:(NSInteger *)count phase:(CGFloat *)phase
{
    
}

- (void)fill
{
    
}

- (void)stroke
{
    
}

- (void)fillWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
    
}

- (void)strokeWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
    
}

- (void)addClip
{
    
}

@end
