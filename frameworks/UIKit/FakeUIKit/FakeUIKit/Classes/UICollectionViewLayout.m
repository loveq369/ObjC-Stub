
#import "UICollectionViewLayout.h"

@implementation UICollectionViewLayoutAttributes

+ (instancetype)layoutAttributesForCellWithIndexPath:(NSIndexPath *)indexPath
{
    return [[self alloc] init];
}

+ (instancetype)layoutAttributesForSupplementaryViewOfKind:(NSString *)elementKind withIndexPath:(NSIndexPath *)indexPath
{
    return [[self alloc] init];
}

+ (instancetype)layoutAttributesForDecorationViewOfKind:(NSString *)decorationViewKind withIndexPath:(NSIndexPath*)indexPath
{
    return [[self alloc] init];
}

@end

@implementation UICollectionViewUpdateItem

@end

@implementation UICollectionViewLayoutInvalidationContext

- (void)invalidateItemsAtIndexPaths:(NSArray *)indexPaths
{
    
}

- (void)invalidateSupplementaryElementsOfKind:(NSString *)elementKind atIndexPaths:(NSArray *)indexPaths
{
    
}

- (void)invalidateDecorationElementsOfKind:(NSString *)elementKind atIndexPaths:(NSArray *)indexPaths
{
    
}

@end

@implementation UICollectionViewLayout

- (void)invalidateLayout
{
    
}

- (void)invalidateLayoutWithContext:(UICollectionViewLayoutInvalidationContext *)context
{
    
}

- (void)registerClass:(Class)viewClass forDecorationViewOfKind:(NSString *)elementKind
{
    
}

- (void)registerNib:(UINib *)nib forDecorationViewOfKind:(NSString *)elementKind
{
    
}

@end

@implementation UICollectionViewLayout (UISubclassingHooks)

+ (Class)layoutAttributesClass
{
    return 0;
}

+ (Class)invalidationContextClass
{
    return 0;
}

- (void)prepareLayout
{
    
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    return nil;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForSupplementaryViewOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForDecorationViewOfKind:(NSString*)elementKind atIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return 0;
}

- (UICollectionViewLayoutInvalidationContext *)invalidationContextForBoundsChange:(CGRect)newBounds
{
    return nil;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)preferredAttributes withOriginalAttributes:(UICollectionViewLayoutAttributes *)originalAttributes
{
    return 0;
}

- (UICollectionViewLayoutInvalidationContext *)invalidationContextForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)preferredAttributes withOriginalAttributes:(UICollectionViewLayoutAttributes *)originalAttributes
{
    return nil;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity
{
    return 0;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset
{
    return 0;
}

- (CGSize)collectionViewContentSize
{
    return 0;
}

@end

@implementation UICollectionViewLayout (UIUpdateSupportHooks)

- (void)prepareForCollectionViewUpdates:(NSArray *)updateItems
{
    
}

- (void)finalizeCollectionViewUpdates
{
    
}

- (void)prepareForAnimatedBoundsChange:(CGRect)oldBounds
{
    
}

- (void)finalizeAnimatedBoundsChange
{
    
}

- (void)prepareForTransitionToLayout:(UICollectionViewLayout *)newLayout
{
    
}

- (void)prepareForTransitionFromLayout:(UICollectionViewLayout *)oldLayout
{
    
}

- (void)finalizeLayoutTransition
{
    
}

- (UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingItemAtIndexPath:(NSIndexPath *)itemIndexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes *)finalLayoutAttributesForDisappearingItemAtIndexPath:(NSIndexPath *)itemIndexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)elementIndexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes *)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)elementIndexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingDecorationElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)decorationIndexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes *)finalLayoutAttributesForDisappearingDecorationElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)decorationIndexPath
{
    return nil;
}

- (NSArray *)indexPathsToDeleteForSupplementaryViewOfKind:(NSString *)elementKind
{
    return nil;
}

- (NSArray *)indexPathsToDeleteForDecorationViewOfKind:(NSString *)elementKind
{
    return nil;
}

- (NSArray *)indexPathsToInsertForSupplementaryViewOfKind:(NSString *)elementKind
{
    return nil;
}

- (NSArray *)indexPathsToInsertForDecorationViewOfKind:(NSString *)elementKind
{
    return nil;
}

@end
