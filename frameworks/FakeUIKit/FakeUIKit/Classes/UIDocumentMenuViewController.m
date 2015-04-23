
#import "UIDocumentMenuViewController.h"

@implementation UIDocumentMenuViewController

- (instancetype)initWithDocumentTypes:(NSArray *)allowedUTIs inMode:(UIDocumentPickerMode)mode
{
    return [super init];
}

- (instancetype)initWithURL:(NSURL *)url inMode:(UIDocumentPickerMode)mode
{
    return [super init];
}

- (void)addOptionWithTitle:(NSString *)title image:(UIImage *)image order:(UIDocumentMenuOrder)order handler:(void (^)(void))handler
{
    
}

@end
