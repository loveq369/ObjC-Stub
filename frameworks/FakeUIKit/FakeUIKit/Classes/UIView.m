
#import "UIView.h"

@implementation UIView

+ (Class)layerClass
{
    return nil;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    return [super init];
}

@end

@implementation UIView(UIViewGeometry)

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    return nil;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return 0;
}

- (CGPoint)convertPoint:(CGPoint)point toView:(UIView *)view
{
    return (CGPoint){};
}

- (CGPoint)convertPoint:(CGPoint)point fromView:(UIView *)view
{
    return (CGPoint){};
}

- (CGRect)convertRect:(CGRect)rect toView:(UIView *)view
{
    return (CGRect){};
}

- (CGRect)convertRect:(CGRect)rect fromView:(UIView *)view
{
    return (CGRect){};
}

- (CGSize)sizeThatFits:(CGSize)size
{
    return (CGSize){};
}

- (void)sizeToFit
{
    
}

@end

@implementation UIView(UIViewHierarchy)

- (void)removeFromSuperview
{
    
}

- (void)insertSubview:(UIView *)view atIndex:(NSInteger)index
{
    
}

- (void)exchangeSubviewAtIndex:(NSInteger)index1 withSubviewAtIndex:(NSInteger)index2
{
    
}

- (void)addSubview:(UIView *)view
{
    
}

- (void)insertSubview:(UIView *)view belowSubview:(UIView *)siblingSubview
{
    
}

- (void)insertSubview:(UIView *)view aboveSubview:(UIView *)siblingSubview
{
    
}

- (void)bringSubviewToFront:(UIView *)view
{
    
}

- (void)sendSubviewToBack:(UIView *)view
{
    
}

- (void)didAddSubview:(UIView *)subview
{
    
}

- (void)willRemoveSubview:(UIView *)subview
{
    
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    
}

- (void)didMoveToSuperview
{
    
}

- (void)willMoveToWindow:(UIWindow *)newWindow
{
    
}

- (void)didMoveToWindow
{
    
}

- (BOOL)isDescendantOfView:(UIView *)view
{
    return 0;
}

- (UIView *)viewWithTag:(NSInteger)tag
{
    return nil;
}

- (void)setNeedsLayout
{
    
}

- (void)layoutIfNeeded
{
    
}

- (void)layoutSubviews
{
    
}

- (void)layoutMarginsDidChange
{
    
}

@end

@implementation UIView(UIViewRendering)

- (void)drawRect:(CGRect)rect
{
    
}

- (void)setNeedsDisplay
{
    
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
    
}

- (void)tintColorDidChange
{
    
}

@end

@implementation UIView(UIViewAnimation)

+ (void)beginAnimations:(NSString *)animationID context:(void *)context
{
    
}

+ (void)commitAnimations
{
    
}

+ (void)setAnimationDelegate:(id)delegate
{
    
}

+ (void)setAnimationWillStartSelector:(SEL)selector
{
    
}

+ (void)setAnimationDidStopSelector:(SEL)selector
{
    
}

+ (void)setAnimationDuration:(NSTimeInterval)duration
{
    
}

+ (void)setAnimationDelay:(NSTimeInterval)delay
{
    
}

+ (void)setAnimationStartDate:(NSDate *)startDate
{
    
}

+ (void)setAnimationCurve:(UIViewAnimationCurve)curve
{
    
}

+ (void)setAnimationRepeatCount:(float)repeatCount
{
    
}

+ (void)setAnimationRepeatAutoreverses:(BOOL)repeatAutoreverses
{
    
}

+ (void)setAnimationBeginsFromCurrentState:(BOOL)fromCurrentState
{
    
}

+ (void)setAnimationTransition:(UIViewAnimationTransition)transition forView:(UIView *)view cache:(BOOL)cache
{
    
}

+ (void)setAnimationsEnabled:(BOOL)enabled
{
    
}

+ (BOOL)areAnimationsEnabled
{
    return 0;
}

+ (void)performWithoutAnimation:(void (^)(void))actionsWithoutAnimation
{
    
}

@end

@implementation UIView(UIViewAnimationWithBlocks)

+ (void)animateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion
{
    
}

+ (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion
{
    
}

+ (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations
{
    
}

+ (void)animateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion
{
    
}

+ (void)transitionWithView:(UIView *)view duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion
{
    
}

+ (void)transitionFromView:(UIView *)fromView toView:(UIView *)toView duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options completion:(void (^)(BOOL finished))completion
{
    
}

+ (void)performSystemAnimation:(UISystemAnimation)animation onViews:(NSArray *)views options:(UIViewAnimationOptions)options animations:(void (^)(void))parallelAnimations completion:(void (^)(BOOL finished))completion
{
    
}

@end

@implementation UIView (UIViewKeyframeAnimations)

+ (void)animateKeyframesWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewKeyframeAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion
{
    
}

+ (void)addKeyframeWithRelativeStartTime:(double)frameStartTime relativeDuration:(double)frameDuration animations:(void (^)(void))animations
{
    
}

@end

@implementation UIView (UIViewGestureRecognizers)

- (void)addGestureRecognizer:(UIGestureRecognizer*)gestureRecognizer
{
    
}

- (void)removeGestureRecognizer:(UIGestureRecognizer*)gestureRecognizer
{
    
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return 0;
}

@end

@implementation UIView (UIViewMotionEffects)

- (void)addMotionEffect:(UIMotionEffect *)effect
{
    
}

- (void)removeMotionEffect:(UIMotionEffect *)effect
{
    
}

@end

@implementation UIView (UIConstraintBasedLayoutInstallingConstraints)

- (NSArray *)constraints
{
    return nil;
}

- (void)addConstraint:(NSLayoutConstraint *)constraint
{
    
}

- (void)addConstraints:(NSArray *)constraints
{
    
}

- (void)removeConstraint:(NSLayoutConstraint *)constraint
{
    
}

- (void)removeConstraints:(NSArray *)constraints
{
    
}

@end

@implementation UIView (UIConstraintBasedLayoutCoreMethods)

- (void)updateConstraintsIfNeeded
{
    
}

- (void)updateConstraints
{
    
}

- (BOOL)needsUpdateConstraints
{
    return 0;
}

- (void)setNeedsUpdateConstraints
{
    
}

@end

@implementation UIView (UIConstraintBasedCompatibility)

- (BOOL)translatesAutoresizingMaskIntoConstraints
{
    return 0;
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)flag
{
    
}

+ (BOOL)requiresConstraintBasedLayout
{
    return 0;
}

@end

@implementation UIView (UIConstraintBasedLayoutLayering)

- (CGRect)alignmentRectForFrame:(CGRect)frame
{
    return (CGRect){};
}

- (CGRect)frameForAlignmentRect:(CGRect)alignmentRect
{
    return (CGRect){};
}

- (UIEdgeInsets)alignmentRectInsets
{
    return (UIEdgeInsets){};
}

- (UIView *)viewForBaselineLayout
{
    return nil;
}

- (CGSize)intrinsicContentSize
{
    return (CGSize){};
}

- (void)invalidateIntrinsicContentSize
{
    
}

- (UILayoutPriority)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis
{
    return 0;
}

- (void)setContentHuggingPriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis
{
    
}

- (UILayoutPriority)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis
{
    return 0;
}

- (void)setContentCompressionResistancePriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis
{
    
}

@end

@implementation UIView (UIConstraintBasedLayoutFittingSize)

- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize
{
    return (CGSize){};
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority
{
    return (CGSize){};
}

@end

@implementation UIView (UIConstraintBasedLayoutDebugging)

- (NSArray *)constraintsAffectingLayoutForAxis:(UILayoutConstraintAxis)axis
{
    return nil;
}

- (BOOL)hasAmbiguousLayout
{
    return 0;
}

- (void)exerciseAmbiguityInLayout
{
    
}

@end

@implementation UIView (UIStateRestoration)

- (void) encodeRestorableStateWithCoder:(NSCoder *)coder
{
    
}

- (void) decodeRestorableStateWithCoder:(NSCoder *)coder
{
    
}

@end

@implementation UIView (UISnapshotting)

- (UIView *)snapshotViewAfterScreenUpdates:(BOOL)afterUpdates
{
    return nil;
}

- (UIView *)resizableSnapshotViewFromRect:(CGRect)rect afterScreenUpdates:(BOOL)afterUpdates withCapInsets:(UIEdgeInsets)capInsets
{
    return nil;
}

- (BOOL)drawViewHierarchyInRect:(CGRect)rect afterScreenUpdates:(BOOL)afterUpdates
{
    return 0;
}

@end
