
#import "UIImagePickerController.h"

@implementation UIImagePickerController

+ (BOOL)isSourceTypeAvailable:(UIImagePickerControllerSourceType)sourceType
{
    return 0;
}

+ (NSArray *)availableMediaTypesForSourceType:(UIImagePickerControllerSourceType)sourceType
{
    return nil;
}

+ (BOOL)isCameraDeviceAvailable:(UIImagePickerControllerCameraDevice)cameraDevice
{
    return 0;
}

+ (BOOL)isFlashAvailableForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice
{
    return 0;
}

+ (NSArray *)availableCaptureModesForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice
{
    return nil;
}

- (void)takePicture
{
    
}

- (BOOL)startVideoCapture
{
    return 0;
}

- (void)stopVideoCapture
{
    
}

@end
