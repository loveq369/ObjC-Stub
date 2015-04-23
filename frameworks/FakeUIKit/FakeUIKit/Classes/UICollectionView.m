
#import "UICollectionView.h"

@implementation UICollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout
{
    return [super init];
}

- (void)registerClass:(Class)cellClass forCellWithReuseIdentifier:(NSString *)identifier
{
    
}

- (void)registerNib:(UINib *)nib forCellWithReuseIdentifier:(NSString *)identifier
{
    
}

- (void)registerClass:(Class)viewClass forSupplementaryViewOfKind:(NSString *)elementKind withReuseIdentifier:(NSString *)identifier
{
    
}

- (void)registerNib:(UINib *)nib forSupplementaryViewOfKind:(NSString *)kind withReuseIdentifier:(NSString *)identifier
{
    
}

- (id)dequeueReusableCellWithReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath*)indexPath
{
    return [super init];
}

- (id)dequeueReusableSupplementaryViewOfKind:(NSString*)elementKind withReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath*)indexPath
{
    return [super init];
}

- (NSArray *)indexPathsForSelectedItems
{
    return nil;
}

- (void)selectItemAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UICollectionViewScrollPosition)scrollPosition
{
    
}

- (void)deselectItemAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated
{
    
}

- (void)reloadData
{
    
}

- (void)setCollectionViewLayout:(UICollectionViewLayout *)layout animated:(BOOL)animated
{
    
}

- (void)setCollectionViewLayout:(UICollectionViewLayout *)layout animated:(BOOL)animated completion:(void (^)(BOOL finished))completion
{
    
}

- (UICollectionViewTransitionLayout *)startInteractiveTransitionToCollectionViewLayout:(UICollectionViewLayout *)layout completion:(UICollectionViewLayoutInteractiveTransitionCompletion)completion
{
    return nil;
}

- (void)finishInteractiveTransition
{
    
}

- (void)cancelInteractiveTransition
{
    
}

- (NSInteger)numberOfSections
{
    return 0;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section
{
    return 0;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (NSIndexPath *)indexPathForItemAtPoint:(CGPoint)point
{
    return nil;
}

- (NSIndexPath *)indexPathForCell:(UICollectionViewCell *)cell
{
    return nil;
}

- (UICollectionViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (NSArray *)visibleCells
{
    return nil;
}

- (NSArray *)indexPathsForVisibleItems
{
    return nil;
}

- (void)scrollToItemAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UICollectionViewScrollPosition)scrollPosition animated:(BOOL)animated
{
    
}

- (void)insertSections:(NSIndexSet *)sections
{
    
}

- (void)deleteSections:(NSIndexSet *)sections
{
    
}

- (void)reloadSections:(NSIndexSet *)sections
{
    
}

- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection
{
    
}

- (void)insertItemsAtIndexPaths:(NSArray *)indexPaths
{
    
}

- (void)deleteItemsAtIndexPaths:(NSArray *)indexPaths
{
    
}

- (void)reloadItemsAtIndexPaths:(NSArray *)indexPaths
{
    
}

- (void)moveItemAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath
{
    
}

- (void)performBatchUpdates:(void (^)(void))updates completion:(void (^)(BOOL finished))completion
{
    
}

@end

@implementation NSIndexPath (UICollectionViewAdditions)

+ (NSIndexPath *)indexPathForItem:(NSInteger)item inSection:(NSInteger)section
{
    return nil;
}

@end
