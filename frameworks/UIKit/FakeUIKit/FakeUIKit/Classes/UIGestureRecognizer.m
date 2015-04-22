
#import "UIGestureRecognizer.h"

@implementation UIGestureRecognizer

- (instancetype)initWithTarget:(id)target action:(SEL)action
{
    return [super init];
}

- (void)addTarget:(id)target action:(SEL)action
{
    
}

- (void)removeTarget:(id)target action:(SEL)action
{
    
}

- (void)requireGestureRecognizerToFail:(UIGestureRecognizer *)otherGestureRecognizer
{
    
}

- (CGPoint)locationInView:(UIView*)view
{
    return (CGPoint){};
}

- (NSUInteger)numberOfTouches
{
    return (NSUInteger){};
}

- (CGPoint)locationOfTouch:(NSUInteger)touchIndex inView:(UIView*)view
{
    return (CGPoint){};
}

@end
