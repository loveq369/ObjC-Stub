
#import "UILocalizedIndexedCollation.h"

@implementation UILocalizedIndexedCollation

+ (id)currentCollation
{
    return [[self alloc] init];
}

- (NSInteger)sectionForSectionIndexTitleAtIndex:(NSInteger)indexTitleIndex
{
    return 0;
}

- (NSInteger)sectionForObject:(id)object collationStringSelector:(SEL)selector
{
    return 0;
}

- (NSArray *)sortedArrayFromArray:(NSArray *)array collationStringSelector:(SEL)selector
{
    return nil;
}

@end
