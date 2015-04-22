
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
    return 0;
}

- (CGVector)CGVectorValue
{
    return 0;
}

- (CGSize)CGSizeValue
{
    return 0;
}

- (CGRect)CGRectValue
{
    return 0;
}

- (CGAffineTransform)CGAffineTransformValue
{
    return 0;
}

- (UIEdgeInsets)UIEdgeInsetsValue
{
    return 0;
}

- (UIOffset)UIOffsetValue
{
    return 0;
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
    return 0;
}

- (CGVector)decodeCGVectorForKey:(NSString *)key
{
    return 0;
}

- (CGSize)decodeCGSizeForKey:(NSString *)key
{
    return 0;
}

- (CGRect)decodeCGRectForKey:(NSString *)key
{
    return 0;
}

- (CGAffineTransform)decodeCGAffineTransformForKey:(NSString *)key
{
    return 0;
}

- (UIEdgeInsets)decodeUIEdgeInsetsForKey:(NSString *)key
{
    return 0;
}

- (UIOffset)decodeUIOffsetForKey:(NSString *)key
{
    return 0;
}

@end
