
#import "UIDynamicItemBehavior.h"

@implementation UIDynamicItemBehavior

- (instancetype)initWithItems:(NSArray *)items
{
    return [super init];
}

- (void)addItem:(id <UIDynamicItem>)item
{
    
}

- (void)removeItem:(id <UIDynamicItem>)item
{
    
}

- (void)addLinearVelocity:(CGPoint)velocity forItem:(id <UIDynamicItem>)item
{
    
}

- (CGPoint)linearVelocityForItem:(id <UIDynamicItem>)item
{
    return (CGPoint){};
}

- (void)addAngularVelocity:(CGFloat)velocity forItem:(id <UIDynamicItem>)item
{
    
}

- (CGFloat)angularVelocityForItem:(id <UIDynamicItem>)item
{
    return 0.0f;
}

@end
