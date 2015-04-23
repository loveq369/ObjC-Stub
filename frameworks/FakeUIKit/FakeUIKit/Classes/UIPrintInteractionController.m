
#import "UIPrintInteractionController.h"

@implementation UIPrintInteractionController

+ (BOOL)isPrintingAvailable
{
    return 0;
}

+ (NSSet *)printableUTIs
{
    return nil;
}

+ (BOOL)canPrintURL:(NSURL *)url
{
    return 0;
}

+ (BOOL)canPrintData:(NSData *)data
{
    return 0;
}

+ (UIPrintInteractionController *)sharedPrintController
{
    return nil;
}

- (BOOL)presentAnimated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion
{
    return 0;
}

- (BOOL)presentFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion
{
    return 0;
}

- (BOOL)presentFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion
{
    return 0;
}

- (BOOL) printToPrinter:(UIPrinter *)printer completionHandler:(UIPrintInteractionCompletionHandler)completion
{
    return 0;
}

- (void)dismissAnimated:(BOOL)animated
{
    
}

@end
