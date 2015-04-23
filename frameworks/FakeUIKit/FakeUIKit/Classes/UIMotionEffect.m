
#import "UIMotionEffect.h"

@implementation UIMotionEffect

- (NSDictionary *)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)viewerOffset
{
    return nil;
}

@end

@implementation UIInterpolatingMotionEffect

- (instancetype)initWithKeyPath:(NSString *)keyPath type:(UIInterpolatingMotionEffectType)type
{
    return [super init];
}

@end

@implementation UIMotionEffectGroup

@end
