
#import "UIGeometry.h"

@implementation NSValue (NSValueUIGeometryExtensions)

+ (NSValue *)valueWithCGPoint:(CGPoint)point
{
    return nil;
}

+ (NSValue *)valueWithCGVector:(CGVector)vector
{
    return nil;
}

+ (NSValue *)valueWithCGSize:(CGSize)size
{
    return nil;
}

+ (NSValue *)valueWithCGRect:(CGRect)rect
{
    return nil;
}

+ (NSValue *)valueWithCGAffineTransform:(CGAffineTransform)transform
{
    return nil;
}

+ (NSValue *)valueWithUIEdgeInsets:(UIEdgeInsets)insets
{
    return nil;
}

+ (NSValue *)valueWithUIOffset:(UIOffset)insets
{
    return nil;
}

- (CGPoint)CGPointValue
{
    return (CGPoint){};
}

- (CGVector)CGVectorValue
{
    return (CGVector){};
}

- (CGSize)CGSizeValue
{
    return (CGSize){};
}

- (CGRect)CGRectValue
{
    return (CGRect){};
}

- (CGAffineTransform)CGAffineTransformValue
{
    return (CGAffineTransform){};
}

- (UIEdgeInsets)UIEdgeInsetsValue
{
    return (UIEdgeInsets){};
}

- (UIOffset)UIOffsetValue
{
    return (UIOffset){};
}

@end

@implementation NSCoder (UIGeometryKeyedCoding)

- (void)encodeCGPoint:(CGPoint)point forKey:(NSString *)key
{
    
}

- (void)encodeCGVector:(CGVector)vector forKey:(NSString *)key
{
    
}

- (void)encodeCGSize:(CGSize)size forKey:(NSString *)key
{
    
}

- (void)encodeCGRect:(CGRect)rect forKey:(NSString *)key
{
    
}

- (void)encodeCGAffineTransform:(CGAffineTransform)transform forKey:(NSString *)key
{
    
}

- (void)encodeUIEdgeInsets:(UIEdgeInsets)insets forKey:(NSString *)key
{
    
}

- (void)encodeUIOffset:(UIOffset)offset forKey:(NSString *)key
{
    
}

- (CGPoint)decodeCGPointForKey:(NSString *)key
{
    return (CGPoint){};
}

- (CGVector)decodeCGVectorForKey:(NSString *)key
{
    return (CGVector){};
}

- (CGSize)decodeCGSizeForKey:(NSString *)key
{
    return (CGSize){};
}

- (CGRect)decodeCGRectForKey:(NSString *)key
{
    return (CGRect){};
}

- (CGAffineTransform)decodeCGAffineTransformForKey:(NSString *)key
{
    return (CGAffineTransform){};
}

- (UIEdgeInsets)decodeUIEdgeInsetsForKey:(NSString *)key
{
    return (UIEdgeInsets){};
}

- (UIOffset)decodeUIOffsetForKey:(NSString *)key
{
    return (UIOffset){};
}

@end
