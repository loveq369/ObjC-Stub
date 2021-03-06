//
//  UIViewControllerTransitionCoordinator.h
//  UIKit
//
//  Copyright (c) 2013-2014 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FakeUIKit/UIViewController.h>

// An object that conforms to this protocol provides descriptive information about an active
// view controller transition.
@protocol UIViewControllerTransitionCoordinatorContext <NSObject>

// Most of the time isAnimated will be YES. For custom transitions that use the
// new UIModalPresentationCustom presentation type we invoke the
// animateTransition: even though the transition is not animated. (This allows
// the custom transition to add or remove subviews to the container view.)
- (BOOL)isAnimated;

// A modal presentation style whose transition is being customized or UIModaPresentationNone if this is not a modal presentation
// or dismissal.
- (UIModalPresentationStyle)presentationStyle;

// initiallyInteractive can only be YES if isAnimated is YES. It never changes during the course of a transition. This indicates whether the transition
// was initiated as an interactive transition. If this is no, isInteractive can not be YES.
- (BOOL)initiallyInteractive;

// Interactive transitions have non-interactive segments. For example, they all complete non-interactively. Some interactive transitions may have
// intermediate segments that are not interactive.
- (BOOL)isInteractive;

// isCancelled is usually NO. It is only set to YES for an interactive transition that was cancelled.
- (BOOL)isCancelled;

// The full expected duration of the transition if it is run non-interactively. 
- (NSTimeInterval)transitionDuration;

// These three methods are potentially meaningful for interactive transitions that are
// completing. It reports the percent complete of the transition when it moves
// to the non-interactive completion phase of the transition.
- (CGFloat)percentComplete;
- (CGFloat)completionVelocity;
- (UIViewAnimationCurve)completionCurve;

// Currently only two keys are defined by the system.
// UITransitionContextToViewControllerKey,
// UITransitionContextFromViewControllerKey, and
- (UIViewController *)viewControllerForKey:(NSString *)key;

// Currently only two keys are defined by the system.
// UITransitionContextToViewKey,
// UITransitionContextFromViewKey.
- (UIView *)viewForKey:(NSString *)key NS_AVAILABLE_IOS(8_0);

// The view in which the animated transition is taking place.
- (UIView *)containerView;

// This is a rotation transform of either +90, -90, 180. It is only set to something other identify if the transition is a rotation.
- (CGAffineTransform)targetTransform NS_AVAILABLE_IOS(8_0);

@end

// An object conforming to this protocol is returned by -[UIViewController
// transitionCoordinator] when an active transition or presentation/dismissal is
// in flight. A container controller may not vend such an object. This is an
// emphemeral object that is released after the transition completes and the
// last callback has been made.

@protocol UIViewControllerTransitionCoordinator <UIViewControllerTransitionCoordinatorContext>


// Any animations specified will be run in the same animation context as the
// transition. If the animations are occurring in a view that is a not
// descendent of the containerView, then an ancestor view in which all of the
// animations are occuring should be specified.  The completionBlock is invoked
// after the transition completes. (Note that this may not be after all the
// animations specified by to call complete if the duration is not inherited.)
// It is perfectly legitimate to only specify a completion block. This method
// returns YES if the animations are successfully queued to run. The completions
// may be run even if the animations are not. Note that for transitioning
// animators that are not implemented with UIView animations, the alongside
// animations will be run just after their animateTransition: method returns.
//
- (BOOL)animateAlongsideTransition:(void (^)(id <UIViewControllerTransitionCoordinatorContext>context))animation
                        completion:(void (^)(id <UIViewControllerTransitionCoordinatorContext>context))completion;

// This alternative API is needed if the view is not a descendent of the container view AND you require this animation
// to be driven by a UIPercentDrivenInteractiveTransition interaction controller.
- (BOOL)animateAlongsideTransitionInView:(UIView *)view
                               animation:(void (^)(id <UIViewControllerTransitionCoordinatorContext>context))animation
                              completion:(void (^)(id <UIViewControllerTransitionCoordinatorContext>context))completion;

// When a transition changes from interactive to non-interactive then handler is
// invoked. The handler will typically then do something depending on whether or
// not the transition isCancelled. Note that only interactive transitions can
// be cancelled and all interactive transitions complete as non-interactive
// ones. In general, when a transition is cancelled the view controller that was
// appearing will receive a viewWillDisappear: call, and the view controller
// that was disappearing will receive a viewWillAppear: call.  This handler is
// invoked BEFORE the "will" method calls are made.
- (void)notifyWhenInteractionEndsUsingBlock: (void (^)(id <UIViewControllerTransitionCoordinatorContext>context))handler;

@end

@interface UIViewController(UIViewControllerTransitionCoordinator)

// The default implementation will return a transition coordinator if called during
// an active presentation or dismissal. Otherwise it will ask the parent view
// controller. This method, if overridden, can first check if there is an
// appropriate transition coordinator to return, otherwise it should call
// super. Only custom container view controllers should ever need to override
// this method.
- (id <UIViewControllerTransitionCoordinator>)transitionCoordinator NS_AVAILABLE_IOS(7_0);
@end
