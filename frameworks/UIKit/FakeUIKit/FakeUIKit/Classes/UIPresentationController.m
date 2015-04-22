
#import "UIPresentationController.h"

@implementation UIPresentationController

- (instancetype)initWithPresentedViewController:(UIViewController *)presentedViewController presentingViewController:(UIViewController *)presentingViewController
{
    return [super init];
}

- (UIModalPresentationStyle)adaptivePresentationStyle
{
    return 0;
}

- (UIModalPresentationStyle)adaptivePresentationStyleForTraitCollection:(UITraitCollection *)traitCollection
{
    return 0;
}

- (void)containerViewWillLayoutSubviews
{
    
}

- (void)containerViewDidLayoutSubviews
{
    
}

- (UIView *)presentedView
{
    return nil;
}

- (CGRect)frameOfPresentedViewInContainerView
{
    return 0;
}

- (BOOL)shouldPresentInFullscreen
{
    return 0;
}

- (BOOL)shouldRemovePresentersView
{
    return 0;
}

- (void)presentationTransitionWillBegin
{
    
}

- (void)presentationTransitionDidEnd:(BOOL)completed
{
    
}

- (void)dismissalTransitionWillBegin
{
    
}

- (void)dismissalTransitionDidEnd:(BOOL)completed
{
    
}

@end
