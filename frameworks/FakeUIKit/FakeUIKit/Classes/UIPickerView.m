
#import "UIPickerView.h"

@implementation UIPickerView

- (NSInteger)numberOfRowsInComponent:(NSInteger)component
{
    return 0;
}

- (CGSize)rowSizeForComponent:(NSInteger)component
{
    return (CGSize){};
}

- (UIView *)viewForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return nil;
}

- (void)reloadAllComponents
{
    
}

- (void)reloadComponent:(NSInteger)component
{
    
}

- (void)selectRow:(NSInteger)row inComponent:(NSInteger)component animated:(BOOL)animated
{
    
}

- (NSInteger)selectedRowInComponent:(NSInteger)component
{
    return 0;
}

@end
