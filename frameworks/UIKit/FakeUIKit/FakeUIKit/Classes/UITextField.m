
#import "UITextField.h"

@implementation UITextField

- (CGRect)borderRectForBounds:(CGRect)bounds
{
    return (CGRect){};
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
    return (CGRect){};
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
    return (CGRect){};
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
    return (CGRect){};
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
    return (CGRect){};
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    return (CGRect){};
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
    return (CGRect){};
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
