
#import "UIActionSheet.h"

@implementation UIActionSheet

- (instancetype)initWithTitle:(NSString *)title delegate:(id<UIActionSheetDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION
{
    return [super init];
}

- (NSInteger)addButtonWithTitle:(NSString *)title
{
    return 0;
}

- (NSString *)buttonTitleAtIndex:(NSInteger)buttonIndex
{
    return nil;
}

- (void)showFromToolbar:(UIToolbar *)view
{
    
}

- (void)showFromTabBar:(UITabBar *)view
{
    
}

- (void)showFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated
{
    
}

- (void)showFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated
{
    
}

- (void)showInView:(UIView *)view
{
    
}

- (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated
{
    
}

@end
