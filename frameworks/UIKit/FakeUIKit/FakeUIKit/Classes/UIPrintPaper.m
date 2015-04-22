
#import "UIPrintPaper.h"

@implementation UIPrintPaper

+ (UIPrintPaper *)bestPaperForPageSize:(CGSize)contentSize withPapersFromArray:(NSArray *)paperList
{
    return nil;
}

@end

@implementation UIPrintPaper(Deprecated_Nonfunctional)

- (CGRect)printRect
{
    return 0;
}

@end
