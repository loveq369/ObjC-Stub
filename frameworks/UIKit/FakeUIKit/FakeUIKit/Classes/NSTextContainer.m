
#import "NSTextContainer.h"

@implementation NSTextContainer

- (instancetype)initWithSize:(CGSize)size
{
    return [super init];
}

- (CGRect)lineFragmentRectForProposedRect:(CGRect)proposedRect atIndex:(NSUInteger)characterIndex writingDirection:(NSWritingDirection)baseWritingDirection remainingRect:(CGRect *)remainingRect
{
    return 0;
}

@end
