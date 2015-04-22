
#import "UIFontDescriptor.h"

@implementation UIFontDescriptor

- (id)objectForKey:(NSString *)anAttribute
{
    return 0;
}

- (NSDictionary *)fontAttributes
{
    return nil;
}

- (NSArray *)matchingFontDescriptorsWithMandatoryKeys:(NSSet *)mandatoryKeys
{
    return nil;
}

+ (UIFontDescriptor *)fontDescriptorWithFontAttributes:(NSDictionary *)attributes
{
    return nil;
}

+ (UIFontDescriptor *)fontDescriptorWithName:(NSString *)fontName size:(CGFloat)size
{
    return nil;
}

+ (UIFontDescriptor *)fontDescriptorWithName:(NSString *)fontName matrix:(CGAffineTransform)matrix
{
    return nil;
}

+ (UIFontDescriptor *)preferredFontDescriptorWithTextStyle:(NSString *)style
{
    return nil;
}

- (instancetype)initWithFontAttributes:(NSDictionary *)attributes
{
    return [super init];
}

- (UIFontDescriptor *)fontDescriptorByAddingAttributes:(NSDictionary *)attributes
{
    return nil;
}

- (UIFontDescriptor *)fontDescriptorWithSymbolicTraits:(UIFontDescriptorSymbolicTraits)symbolicTraits
{
    return nil;
}

- (UIFontDescriptor *)fontDescriptorWithSize:(CGFloat)newPointSize
{
    return nil;
}

- (UIFontDescriptor *)fontDescriptorWithMatrix:(CGAffineTransform)matrix
{
    return nil;
}

- (UIFontDescriptor *)fontDescriptorWithFace:(NSString *)newFace
{
    return nil;
}

- (UIFontDescriptor *)fontDescriptorWithFamily:(NSString *)newFamily
{
    return nil;
}

@end
