
#import "UISplitViewController.h"

@implementation UISplitViewController

- (UIBarButtonItem *)displayModeButtonItem
{
    return nil;
}

- (void)showViewController:(UIViewController *)vc sender:(id)sender
{
    
}

- (void)showDetailViewController:(UIViewController *)vc sender:(id)sender
{
    
}

@end

@implementation UIViewController (UISplitViewController)

- (void)collapseSecondaryViewController:(UIViewController *)secondaryViewController forSplitViewController:(UISplitViewController *)splitViewController
{
    
}

- (UIViewController *)separateSecondaryViewControllerForSplitViewController:(UISplitViewController *)splitViewController
{
    return nil;
}

@end
