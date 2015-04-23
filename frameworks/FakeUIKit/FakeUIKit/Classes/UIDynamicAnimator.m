
#import "UIDynamicAnimator.h"

@implementation UIDynamicAnimator

- (instancetype)initWithReferenceView:(UIView*)view
{
    return [super init];
}

- (void)addBehavior:(UIDynamicBehavior *)behavior
{
    
}

- (void)removeBehavior:(UIDynamicBehavior *)behavior
{
    
}

- (void)removeAllBehaviors
{
    
}

- (NSArray*)itemsInRect:(CGRect)rect
{
    return nil;
}

- (void)updateItemUsingCurrentState:(id <UIDynamicItem>)item
{
    
}

- (NSTimeInterval)elapsedTime
{
    return 0;
}

@end

@implementation UIDynamicAnimator (UICollectionViewAdditions)

- (instancetype)initWithCollectionViewLayout:(UICollectionViewLayout*)layout
{
    return [super init];
}

- (UICollectionViewLayoutAttributes*)layoutAttributesForCellAtIndexPath:(NSIndexPath*)indexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes*)layoutAttributesForSupplementaryViewOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes*)layoutAttributesForDecorationViewOfKind:(NSString*)decorationViewKind atIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end
