
#import "NSStringDrawing.h"

@implementation NSStringDrawingContext

@end

@implementation NSString(NSStringDrawing)

- (CGSize)sizeWithAttributes:(NSDictionary *)attrs
{
    return 0;
}

- (void)drawAtPoint:(CGPoint)point withAttributes:(NSDictionary *)attrs
{
    
}

- (void)drawInRect:(CGRect)rect withAttributes:(NSDictionary *)attrs
{
    
}

@end

@implementation NSAttributedString(NSStringDrawing)

- (CGSize)size
{
    return 0;
}

- (void)drawAtPoint:(CGPoint)point
{
    
}

- (void)drawInRect:(CGRect)rect
{
    
}

@end

@implementation NSString (NSExtendedStringDrawing)

- (void)drawWithRect:(CGRect)rect options:(NSStringDrawingOptions)options attributes:(NSDictionary *)attributes context:(NSStringDrawingContext *)context
{
    
}

- (CGRect)boundingRectWithSize:(CGSize)size options:(NSStringDrawingOptions)options attributes:(NSDictionary *)attributes context:(NSStringDrawingContext *)context
{
    return 0;
}

@end

@implementation NSAttributedString (NSExtendedStringDrawing)

- (void)drawWithRect:(CGRect)rect options:(NSStringDrawingOptions)options context:(NSStringDrawingContext *)context
{
    
}

- (CGRect)boundingRectWithSize:(CGSize)size options:(NSStringDrawingOptions)options context:(NSStringDrawingContext *)context
{
    return 0;
}

@end
