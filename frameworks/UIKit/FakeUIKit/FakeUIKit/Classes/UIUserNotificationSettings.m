
#import "UIUserNotificationSettings.h"

@implementation UIUserNotificationSettings

+ (instancetype)settingsForTypes:(UIUserNotificationType)types categories:(NSSet *)categories
{
    return [[self alloc] init];
}

@end

@implementation UIUserNotificationCategory

- (NSArray *)actionsForContext:(UIUserNotificationActionContext)context
{
    return nil;
}

@end

@implementation UIMutableUserNotificationCategory

- (void)setActions:(NSArray *)actions forContext:(UIUserNotificationActionContext)context
{
    
}

@end

@implementation UIUserNotificationAction

@end

@implementation UIMutableUserNotificationAction

@end
