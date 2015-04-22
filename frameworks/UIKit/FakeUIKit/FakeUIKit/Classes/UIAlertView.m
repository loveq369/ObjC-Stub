
#import "UIAlertView.h"

@implementation UIAlertView

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id /*<UIAlertViewDelegate>*/)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION
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

- (void)show
{
    
}

- (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated
{
    
}

- (UITextField *)textFieldAtIndex:(NSInteger)textFieldIndex
{
    return nil;
}

@end
