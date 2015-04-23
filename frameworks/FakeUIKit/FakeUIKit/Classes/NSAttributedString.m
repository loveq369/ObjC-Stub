
#import "NSAttributedString.h"

@implementation NSMutableAttributedString (NSMutableAttributedStringKitAdditions)

- (void)fixAttributesInRange:(NSRange)range
{
    
}

@end

@implementation NSAttributedString (NSAttributedStringDocumentFormats)

- (instancetype)initWithFileURL:(NSURL *)url options:(NSDictionary *)options documentAttributes:(NSDictionary **)dict error:(NSError **)error
{
    return [super init];
}

- (instancetype)initWithData:(NSData *)data options:(NSDictionary *)options documentAttributes:(NSDictionary **)dict error:(NSError **)error
{
    return [super init];
}

- (NSData *)dataFromRange:(NSRange)range documentAttributes:(NSDictionary *)dict error:(NSError **)error
{
    return nil;
}

- (NSFileWrapper *)fileWrapperFromRange:(NSRange)range documentAttributes:(NSDictionary *)dict error:(NSError **)error
{
    return nil;
}

@end

@implementation NSMutableAttributedString (NSMutableAttributedStringDocumentFormats)

- (BOOL)readFromFileURL:(NSURL *)url options:(NSDictionary *)opts documentAttributes:(NSDictionary **)dict error:(NSError **)error
{
    return 0;
}

- (BOOL)readFromData:(NSData *)data options:(NSDictionary *)opts documentAttributes:(NSDictionary **)dict error:(NSError **)error
{
    return 0;
}

@end
