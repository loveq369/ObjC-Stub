
#import "UIResponder.h"

@implementation UIResponder

- (UIResponder*)nextResponder
{
    return nil;
}

- (BOOL)canBecomeFirstResponder
{
    return 0;
}

- (BOOL)becomeFirstResponder
{
    return 0;
}

- (BOOL)canResignFirstResponder
{
    return 0;
}

- (BOOL)resignFirstResponder
{
    return 0;
}

- (BOOL)isFirstResponder
{
    return 0;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
}

- (void)remoteControlReceivedWithEvent:(UIEvent *)event
{
    
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    return 0;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
    return 0;
}

@end

@implementation UIKeyCommand

+ (UIKeyCommand *)keyCommandWithInput:(NSString *)input modifierFlags:(UIKeyModifierFlags)modifierFlags action:(SEL)action
{
    return nil;
}

@end

@implementation UIResponder (UIResponderKeyCommands)

@end

@implementation NSObject(UIResponderStandardEditActions) // these methods are not implemented in NSObj

- (void)cut:(id)sender
{
    
}

- (void)copy:(id)sender
{
    
}

- (void)paste:(id)sender
{
    
}

- (void)select:(id)sender
{
    
}

- (void)selectAll:(id)sender
{
    
}

- (void)delete:(id)sender
{
    
}

- (void)makeTextWritingDirectionLeftToRight:(id)sender
{
    
}

- (void)makeTextWritingDirectionRightToLeft:(id)sender
{
    
}

- (void)toggleBoldface:(id)sender
{
    
}

- (void)toggleItalics:(id)sender
{
    
}

- (void)toggleUnderline:(id)sender
{
    
}

- (void)increaseSize:(id)sender
{
    
}

- (void)decreaseSize:(id)sender
{
    
}

@end

@implementation UIResponder (UIResponderInputViewAdditions)

+ (void)clearTextInputContextIdentifier:(NSString *)identifier
{
    
}

- (void)reloadInputViews
{
    
}

@end

@implementation UIResponder (ActivityContinuation)

- (void)updateUserActivityState:(NSUserActivity *)activity
{
    
}

- (void)restoreUserActivityState:(NSUserActivity *)activity
{
    
}

@end
