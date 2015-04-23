
#import "UIControl.h"

@implementation UIControl

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    return 0;
}

- (BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    return 0;
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    
}

- (void)cancelTrackingWithEvent:(UIEvent *)event
{
    
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    
}

- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    
}

- (NSSet *)allTargets
{
    return nil;
}

- (UIControlEvents)allControlEvents
{
    return 0;
}

- (NSArray *)actionsForTarget:(id)target forControlEvent:(UIControlEvents)controlEvent
{
    return nil;
}

- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    
}

- (void)sendActionsForControlEvents:(UIControlEvents)controlEvents
{
    
}

@end
