
#import "UIVisualEffectView.h"

@implementation UIBlurEffect

+ (UIBlurEffect *)effectWithStyle:(UIBlurEffectStyle)style
{
    return nil;
}

@end

@implementation UIVibrancyEffect

+ (UIVibrancyEffect *)effectForBlurEffect:(UIBlurEffect *)blurEffect
{
    return nil;
}

@end

@implementation UIVisualEffectView

- (instancetype)initWithEffect:(UIVisualEffect *)effect NS_DESIGNATED_INITIALIZER
{
    return [super init];
}

@end
