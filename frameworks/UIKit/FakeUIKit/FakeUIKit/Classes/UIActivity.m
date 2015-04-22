
#import "UIActivity.h"

@implementation UIActivity

+ (UIActivityCategory)activityCategory
{
    return 0;
}

- (NSString *)activityType
{
    return nil;
}

- (NSString *)activityTitle
{
    return nil;
}

- (UIImage *)activityImage
{
    return nil;
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems
{
    return 0;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems
{
    
}

- (UIViewController *)activityViewController
{
    return nil;
}

- (void)performActivity
{
    
}

- (void)activityDidFinish:(BOOL)completed
{
    
}

@end
