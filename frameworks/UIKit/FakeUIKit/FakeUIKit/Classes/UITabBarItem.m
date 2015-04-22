
#import "UITabBarItem.h"

@implementation UITabBarItem

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image tag:(NSInteger)tag
{
    return [super init];
}

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage
{
    return [super init];
}

- (instancetype)initWithTabBarSystemItem:(UITabBarSystemItem)systemItem tag:(NSInteger)tag
{
    return [super init];
}

- (void)setFinishedSelectedImage:(UIImage *)selectedImage withFinishedUnselectedImage:(UIImage *)unselectedImage
{
    
}

- (UIImage *)finishedSelectedImage
{
    return nil;
}

- (UIImage *)finishedUnselectedImage
{
    return nil;
}

- (void)setTitlePositionAdjustment:(UIOffset)adjustment UI_APPEARANCE_SELECTOR
{
    
}

- (UIOffset)titlePositionAdjustment UI_APPEARANCE_SELECTOR
{
    return 0;
}

@end
