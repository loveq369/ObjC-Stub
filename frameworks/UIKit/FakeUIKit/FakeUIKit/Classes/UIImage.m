
#import "UIImage.h"

@implementation UIImage

+ (UIImage *)imageNamed:(NSString *)name
{
    return nil;
}

+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle compatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
    return nil;
}

+ (UIImage *)imageWithContentsOfFile:(NSString *)path
{
    return nil;
}

+ (UIImage *)imageWithData:(NSData *)data
{
    return nil;
}

+ (UIImage *)imageWithData:(NSData *)data scale:(CGFloat)scale
{
    return nil;
}

+ (UIImage *)imageWithCGImage:(CGImageRef)cgImage
{
    return nil;
}

+ (UIImage *)imageWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation
{
    return nil;
}

+ (UIImage *)imageWithCIImage:(CIImage *)ciImage
{
    return nil;
}

+ (UIImage *)imageWithCIImage:(CIImage *)ciImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation
{
    return nil;
}

- (instancetype)initWithContentsOfFile:(NSString *)path
{
    return [super init];
}

- (instancetype)initWithData:(NSData *)data
{
    return [super init];
}

- (instancetype)initWithData:(NSData *)data scale:(CGFloat)scale
{
    return [super init];
}

- (instancetype)initWithCGImage:(CGImageRef)cgImage
{
    return [super init];
}

- (instancetype)initWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation
{
    return [super init];
}

- (instancetype)initWithCIImage:(CIImage *)ciImage
{
    return [super init];
}

- (instancetype)initWithCIImage:(CIImage *)ciImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation
{
    return [super init];
}

- (CGImageRef)CGImage NS_RETURNS_INNER_POINTER CF_RETURNS_NOT_RETAINED
{
    return (CGImageRef){};
}

+ (UIImage *)animatedImageNamed:(NSString *)name duration:(NSTimeInterval)duration
{
    return nil;
}

+ (UIImage *)animatedResizableImageNamed:(NSString *)name capInsets:(UIEdgeInsets)capInsets duration:(NSTimeInterval)duration
{
    return nil;
}

+ (UIImage *)animatedResizableImageNamed:(NSString *)name capInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode duration:(NSTimeInterval)duration
{
    return nil;
}

+ (UIImage *)animatedImageWithImages:(NSArray *)images duration:(NSTimeInterval)duration
{
    return nil;
}

- (void)drawAtPoint:(CGPoint)point
{
    
}

- (void)drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
    
}

- (void)drawInRect:(CGRect)rect
{
    
}

- (void)drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
    
}

- (void)drawAsPatternInRect:(CGRect)rect
{
    
}

- (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets
{
    return nil;
}

- (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode
{
    return nil;
}

- (UIImage *)imageWithAlignmentRectInsets:(UIEdgeInsets)alignmentInsets
{
    return nil;
}

- (UIImage *)imageWithRenderingMode:(UIImageRenderingMode)renderingMode
{
    return nil;
}

@end

@implementation UIImage(UIImageDeprecated)

- (UIImage *)stretchableImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight
{
    return nil;
}

@end

@implementation CIImage(UIKitAdditions)

- (instancetype)initWithImage:(UIImage *)image
{
    return [super init];
}

- (instancetype)initWithImage:(UIImage *)image options:(NSDictionary *)options
{
    return [super init];
}

@end
