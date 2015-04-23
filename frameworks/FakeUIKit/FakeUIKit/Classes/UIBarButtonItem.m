
#import "UIBarButtonItem.h"

@implementation UIBarButtonItem

- (instancetype)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action
{
    return [super init];
}

- (instancetype)initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action
{
    return [super init];
}

- (instancetype)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action
{
    return [super init];
}

- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action
{
    return [super init];
}

- (instancetype)initWithCustomView:(UIView *)customView
{
    return [super init];
}

- (void)setBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    
}

- (UIImage *)backgroundImageForState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    return nil;
}

- (void)setBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state style:(UIBarButtonItemStyle)style barMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    
}

- (UIImage *)backgroundImageForState:(UIControlState)state style:(UIBarButtonItemStyle)style barMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    return nil;
}

- (void)setBackgroundVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    
}

- (CGFloat)backgroundVerticalPositionAdjustmentForBarMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    return 0.0f;
}

- (void)setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    
}

- (UIOffset)titlePositionAdjustmentForBarMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    return (UIOffset){};
}

- (void)setBackButtonBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    
}

- (UIImage *)backButtonBackgroundImageForState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    return nil;
}

- (void)setBackButtonTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    
}

- (UIOffset)backButtonTitlePositionAdjustmentForBarMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    return (UIOffset){};
}

- (void)setBackButtonBackgroundVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    
}

- (CGFloat)backButtonBackgroundVerticalPositionAdjustmentForBarMetrics:(UIBarMetrics)barMetrics UI_APPEARANCE_SELECTOR
{
    return 0.0f;
}

@end
