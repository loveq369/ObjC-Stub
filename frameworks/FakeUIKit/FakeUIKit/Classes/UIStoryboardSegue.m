
#import "UIStoryboardSegue.h"

@implementation UIStoryboardSegue

+ (instancetype)segueWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination performHandler:(void (^)(void))performHandler
{
    return [[self alloc] init];
}

- (instancetype)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
    return [super init];
}

- (void)perform
{
    
}

@end
