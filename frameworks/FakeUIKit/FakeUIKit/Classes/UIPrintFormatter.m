
#import "UIPrintFormatter.h"

@implementation UIPrintFormatter

- (void)removeFromPrintPageRenderer
{
    
}

- (CGRect)rectForPageAtIndex:(NSInteger)pageIndex
{
    return (CGRect){};
}

- (void)drawInRect:(CGRect)rect forPageAtIndex:(NSInteger)pageIndex
{
    
}

@end

@implementation UISimpleTextPrintFormatter

- (instancetype)initWithText:(NSString *)text
{
    return [super init];
}

- (instancetype)initWithAttributedText:(NSAttributedString *)attributedText
{
    return [super init];
}

@end

@implementation UIMarkupTextPrintFormatter

- (instancetype)initWithMarkupText:(NSString *)markupText
{
    return [super init];
}

@end

@implementation UIViewPrintFormatter

@end

@implementation UIView(UIPrintFormatter)

- (UIViewPrintFormatter *)viewPrintFormatter
{
    return nil;
}

- (void)drawRect:(CGRect)rect forViewPrintFormatter:(UIViewPrintFormatter *)formatter
{
    
}

@end
