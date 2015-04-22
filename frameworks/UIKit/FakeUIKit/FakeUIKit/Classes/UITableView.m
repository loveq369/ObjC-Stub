
#import "UITableView.h"

@implementation UITableViewRowAction

+ (instancetype)rowActionWithStyle:(UITableViewRowActionStyle)style title:(NSString *)title handler:(void (^)(UITableViewRowAction *action, NSIndexPath *indexPath))handler
{
    return [[self alloc] init];
}

@end

@implementation UITableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    return [super init];
}

- (void)reloadData
{
    
}

- (void)reloadSectionIndexTitles
{
    
}

- (NSInteger)numberOfSections
{
    return 0;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (CGRect)rectForSection:(NSInteger)section
{
    return 0;
}

- (CGRect)rectForHeaderInSection:(NSInteger)section
{
    return 0;
}

- (CGRect)rectForFooterInSection:(NSInteger)section
{
    return 0;
}

- (CGRect)rectForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 0;
}

- (NSIndexPath *)indexPathForRowAtPoint:(CGPoint)point
{
    return nil;
}

- (NSIndexPath *)indexPathForCell:(UITableViewCell *)cell
{
    return nil;
}

- (NSArray *)indexPathsForRowsInRect:(CGRect)rect
{
    return nil;
}

- (UITableViewCell *)cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (NSArray *)visibleCells
{
    return nil;
}

- (NSArray *)indexPathsForVisibleRows
{
    return nil;
}

- (UITableViewHeaderFooterView *)headerViewForSection:(NSInteger)section
{
    return nil;
}

- (UITableViewHeaderFooterView *)footerViewForSection:(NSInteger)section
{
    return nil;
}

- (void)scrollToRowAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated
{
    
}

- (void)scrollToNearestSelectedRowAtScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated
{
    
}

- (void)beginUpdates
{
    
}

- (void)endUpdates
{
    
}

- (void)insertSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation
{
    
}

- (void)deleteSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation
{
    
}

- (void)reloadSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation
{
    
}

- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection
{
    
}

- (void)insertRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation
{
    
}

- (void)deleteRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation
{
    
}

- (void)reloadRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation
{
    
}

- (void)moveRowAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath
{
    
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    
}

- (NSIndexPath *)indexPathForSelectedRow
{
    return nil;
}

- (NSArray *)indexPathsForSelectedRows
{
    return nil;
}

- (void)selectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UITableViewScrollPosition)scrollPosition
{
    
}

- (void)deselectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated
{
    
}

- (id)dequeueReusableCellWithIdentifier:(NSString *)identifier
{
    return 0;
}

- (id)dequeueReusableCellWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath
{
    return 0;
}

- (id)dequeueReusableHeaderFooterViewWithIdentifier:(NSString *)identifier
{
    return 0;
}

- (void)registerNib:(UINib *)nib forCellReuseIdentifier:(NSString *)identifier
{
    
}

- (void)registerClass:(Class)cellClass forCellReuseIdentifier:(NSString *)identifier
{
    
}

- (void)registerNib:(UINib *)nib forHeaderFooterViewReuseIdentifier:(NSString *)identifier
{
    
}

- (void)registerClass:(Class)aClass forHeaderFooterViewReuseIdentifier:(NSString *)identifier
{
    
}

@end

@implementation NSIndexPath (UITableView)

+ (NSIndexPath *)indexPathForRow:(NSInteger)row inSection:(NSInteger)section
{
    return nil;
}

@end
