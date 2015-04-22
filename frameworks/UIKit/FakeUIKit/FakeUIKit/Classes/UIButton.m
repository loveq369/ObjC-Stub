
#import "UIButton.h"

@implementation UIButton

+ (id)buttonWithType:(UIButtonType)buttonType
{
    return [[self alloc] init];
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    
}

- (void)setTitleColor:(UIColor *)color forState:(UIControlState)state UI_APPEARANCE_SELECTOR
{
    
}

- (void)setTitleShadowColor:(UIColor *)color forState:(UIControlState)state UI_APPEARANCE_SELECTOR
{
    
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state
{
    
}

- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state UI_APPEARANCE_SELECTOR
{
    
}

- (void)setAttributedTitle:(NSAttributedString *)title forState:(UIControlState)state
{
    
}

- (NSString *)titleForState:(UIControlState)state
{
    return nil;
}

- (UIColor *)titleColorForState:(UIControlState)state
{
    return nil;
}

- (UIColor *)titleShadowColorForState:(UIControlState)state
{
    return nil;
}

- (UIImage *)imageForState:(UIControlState)state
{
    return nil;
}

- (UIImage *)backgroundImageForState:(UIControlState)state
{
    return nil;
}

- (NSAttributedString *)attributedTitleForState:(UIControlState)state
{
    return nil;
}

- (CGRect)backgroundRectForBounds:(CGRect)bounds
{
    return (CGRect){};
}

- (CGRect)contentRectForBounds:(CGRect)bounds
{
    return (CGRect){};
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    return (CGRect){};
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    return (CGRect){};
}

@end

@implementation UIButton(UIButtonDeprecated)

@end
