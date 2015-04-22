
#import "NSParagraphStyle.h"

@implementation NSTextTab

- (instancetype)initWithTextAlignment:(NSTextAlignment)alignment location:(CGFloat)loc options:(NSDictionary *)options
{
    return [super init];
}

+ (NSCharacterSet *)columnTerminatorsForLocale:(NSLocale *)aLocale
{
    return nil;
}

@end

@implementation NSParagraphStyle

+ (NSParagraphStyle *)defaultParagraphStyle
{
    return nil;
}

+ (NSWritingDirection)defaultWritingDirectionForLanguage:(NSString *)languageName
{
    return 0;
}

@end

@implementation NSMutableParagraphStyle

@end
