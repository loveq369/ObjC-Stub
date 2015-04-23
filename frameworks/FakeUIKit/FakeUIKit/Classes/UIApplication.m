
#import "UIApplication.h"

@implementation UIApplication

+ (UIApplication *)sharedApplication
{
    return nil;
}

- (void)beginIgnoringInteractionEvents
{
    
}

- (void)endIgnoringInteractionEvents
{
    
}

- (BOOL)isIgnoringInteractionEvents
{
    return 0;
}

- (BOOL)openURL:(NSURL*)url
{
    return 0;
}

- (BOOL)canOpenURL:(NSURL *)url
{
    return 0;
}

- (void)sendEvent:(UIEvent *)event
{
    
}

- (BOOL)sendAction:(SEL)action to:(id)target from:(id)sender forEvent:(UIEvent *)event
{
    return 0;
}

- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle animated:(BOOL)animated
{
    
}

- (void)setStatusBarHidden:(BOOL)hidden withAnimation:(UIStatusBarAnimation)animation
{
    
}

- (void)setStatusBarOrientation:(UIInterfaceOrientation)interfaceOrientation animated:(BOOL)animated
{
    
}

- (NSUInteger)supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return 0;
}

- (UIBackgroundTaskIdentifier)beginBackgroundTaskWithExpirationHandler:(void(^)(void))handler
{
    return 0;
}

- (UIBackgroundTaskIdentifier)beginBackgroundTaskWithName:(NSString *)taskName expirationHandler:(void(^)(void))handler
{
    return 0;
}

- (void)endBackgroundTask:(UIBackgroundTaskIdentifier)identifier
{
    
}

- (void)setMinimumBackgroundFetchInterval:(NSTimeInterval)minimumBackgroundFetchInterval
{
    
}

- (BOOL)setKeepAliveTimeout:(NSTimeInterval)timeout handler:(void(^)(void))keepAliveHandler
{
    return 0;
}

- (void)clearKeepAliveTimeout
{
    
}

@end

@implementation UIApplication (UIRemoteNotifications)

- (void)registerForRemoteNotifications
{
    
}

- (void)unregisterForRemoteNotifications
{
    
}

- (BOOL)isRegisteredForRemoteNotifications
{
    return 0;
}

- (void)registerForRemoteNotificationTypes:(UIRemoteNotificationType)types
{
    
}

- (UIRemoteNotificationType)enabledRemoteNotificationTypes
{
    return 0;
}

@end

@implementation UIApplication (UILocalNotifications)

- (void)presentLocalNotificationNow:(UILocalNotification *)notification
{
    
}

- (void)scheduleLocalNotification:(UILocalNotification *)notification
{
    
}

- (void)cancelLocalNotification:(UILocalNotification *)notification
{
    
}

- (void)cancelAllLocalNotifications
{
    
}

@end

@implementation UIApplication (UIUserNotificationSettings)

- (void)registerUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings
{
    
}

- (UIUserNotificationSettings *)currentUserNotificationSettings
{
    return nil;
}

@end

@implementation UIApplication (UIRemoteControlEvents)

- (void)beginReceivingRemoteControlEvents
{
    
}

- (void)endReceivingRemoteControlEvents
{
    
}

@end

@implementation UIApplication (UINewsstand)

- (void)setNewsstandIconImage:(UIImage *)image
{
    
}

@end

@implementation UIApplication (UIStateRestoration)

- (void)extendStateRestoration
{
    
}

- (void)completeStateRestoration
{
    
}

- (void)ignoreSnapshotOnNextApplicationLaunch
{
    
}

+ (void)registerObjectForStateRestoration:(id<UIStateRestoring>)object restorationIdentifier:(NSString *)restorationIdentifier
{
    
}

@end

@implementation UIApplication(UIApplicationDeprecated)

- (void)setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated
{
    
}

@end
