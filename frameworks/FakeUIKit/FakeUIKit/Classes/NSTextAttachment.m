
#import "NSTextAttachment.h"

@implementation NSTextAttachment

- (instancetype)initWithData:(NSData *)contentData ofType:(NSString *)uti
{
    return [super init];
}

@end

@implementation NSAttributedString (NSAttributedStringAttachmentConveniences)

+ (NSAttributedString *)attributedStringWithAttachment:(NSTextAttachment *)attachment
{
    return nil;
}

@end
