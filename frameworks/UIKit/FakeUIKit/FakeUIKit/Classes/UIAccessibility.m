
#import "UIAccessibility.h"

@implementation NSObject (UIAccessibility)

@end

@implementation NSObject (UIAccessibilityContainer)

- (NSInteger)accessibilityElementCount
{
    return 0;
}

- (id)accessibilityElementAtIndex:(NSInteger)index
{
    return [super init];
}

- (NSInteger)indexOfAccessibilityElement:(id)element
{
    return 0;
}

@end

@implementation NSObject (UIAccessibilityFocus)

- (void)accessibilityElementDidBecomeFocused
{
    
}

- (void)accessibilityElementDidLoseFocus
{
    
}

- (BOOL)accessibilityElementIsFocused
{
    return 0;
}

@end

@implementation NSObject (UIAccessibilityAction)

- (BOOL)accessibilityActivate
{
    return 0;
}

- (void)accessibilityIncrement
{
    
}

- (void)accessibilityDecrement
{
    
}

- (BOOL)accessibilityScroll:(UIAccessibilityScrollDirection)direction
{
    return 0;
}

- (BOOL)accessibilityPerformEscape
{
    return 0;
}

- (BOOL)accessibilityPerformMagicTap
{
    return 0;
}

@end
