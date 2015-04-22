
#import "UITextField.h"

@implementation UITextField

- (CGRect)borderRectForBounds:(CGRect)bounds
{
    return 0;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
    return 0;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
    return 0;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
    return 0;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
    return 0;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    return 0;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
    return 0;
}

- (void)drawTextInRect:(CGRect)rect
{
    
}

- (void)drawPlaceholderInRect:(CGRect)rect
{
    
}

@end

@implementation UIView (UITextField)

- (BOOL)endEditing:(BOOL)force
{
    return 0;
}

@end
