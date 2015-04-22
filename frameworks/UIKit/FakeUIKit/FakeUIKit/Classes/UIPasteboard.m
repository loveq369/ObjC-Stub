
#import "UIPasteboard.h"

@implementation UIPasteboard

+ (UIPasteboard *)generalPasteboard
{
    return nil;
}

+ (UIPasteboard *)pasteboardWithName:(NSString *)pasteboardName create:(BOOL)create
{
    return nil;
}

+ (UIPasteboard *)pasteboardWithUniqueName
{
    return nil;
}

+ (void)removePasteboardWithName:(NSString *)pasteboardName
{
    
}

- (NSArray *)pasteboardTypes
{
    return nil;
}

- (BOOL)containsPasteboardTypes:(NSArray *)pasteboardTypes
{
    return 0;
}

- (NSData *)dataForPasteboardType:(NSString *)pasteboardType
{
    return nil;
}

- (id)valueForPasteboardType:(NSString *)pasteboardType
{
    return [super init];
}

- (void)setValue:(id)value forPasteboardType:(NSString *)pasteboardType
{
    
}

- (void)setData:(NSData *)data forPasteboardType:(NSString *)pasteboardType
{
    
}

- (NSArray *)pasteboardTypesForItemSet:(NSIndexSet*)itemSet
{
    return nil;
}

- (BOOL)containsPasteboardTypes:(NSArray *)pasteboardTypes inItemSet:(NSIndexSet *)itemSet
{
    return 0;
}

- (NSIndexSet *)itemSetWithPasteboardTypes:(NSArray *)pasteboardTypes
{
    return nil;
}

- (NSArray *)valuesForPasteboardType:(NSString *)pasteboardType inItemSet:(NSIndexSet *)itemSet
{
    return nil;
}

- (NSArray *)dataForPasteboardType:(NSString *)pasteboardType inItemSet:(NSIndexSet *)itemSet
{
    return nil;
}

- (void)addItems:(NSArray *)items
{
    
}

@end

@implementation UIPasteboard(UIPasteboardDataExtensions)

@end
