
#import "UINavigationController.h"

@implementation UINavigationController

- (instancetype)initWithNavigationBarClass:(Class)navigationBarClass toolbarClass:(Class)toolbarClass
{
    return [super init];
}

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    return [super init];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    return nil;
}

- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    return nil;
}

- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated
{
    return nil;
}

- (void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated
{
    
}

- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
    
}

- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated
{
    
}

- (void)showViewController:(UIViewController *)vc sender:(id)sender
{
    
}

@end

@implementation UIViewController (UINavigationControllerItem)

@end

@implementation UIViewController (UINavigationControllerContextualToolbarItems)

- (void)setToolbarItems:(NSArray *)toolbarItems animated:(BOOL)animated
{
    
}

@end
