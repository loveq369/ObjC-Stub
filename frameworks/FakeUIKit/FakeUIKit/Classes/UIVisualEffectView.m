
#import "UIVisualEffectView.h"

@implementation UIVisualEffect

@end

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

- (instancetype)initWithEffect:(UIVisualEffect *)effect
{
    return [super init];
}

@end
