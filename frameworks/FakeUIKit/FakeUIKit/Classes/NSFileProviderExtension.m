
#import "NSFileProviderExtension.h"

@implementation NSFileProviderExtension

+ (BOOL)writePlaceholderAtURL:(NSURL *)placeholderURL withMetadata:(NSDictionary *)metadata error:(NSError **)error
{
    return 0;
}

+ (NSURL *)placeholderURLForURL:(NSURL *)url
{
    return nil;
}

- (NSString *)providerIdentifier
{
    return nil;
}

- (NSURL *)documentStorageURL
{
    return nil;
}

- (NSURL *)URLForItemWithPersistentIdentifier:(NSString *)identifier
{
    return nil;
}

- (NSString *)persistentIdentifierForItemAtURL:(NSURL *)url
{
    return nil;
}

- (void)providePlaceholderAtURL:(NSURL *)url completionHandler:(void (^)(NSError *error))completionHandler
{
    
}

- (void)startProvidingItemAtURL:(NSURL *)url completionHandler:(void (^)(NSError *error))completionHandler
{
    
}

- (void)itemChangedAtURL:(NSURL *)url
{
    
}

- (void)stopProvidingItemAtURL:(NSURL *)url
{
    
}

@end
