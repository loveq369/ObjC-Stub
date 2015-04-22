
#import "UIManagedDocument.h"

@implementation UIManagedDocument

+ (NSString *)persistentStoreName
{
    return nil;
}

- (BOOL)configurePersistentStoreCoordinatorForURL:(NSURL *)storeURL ofType:(NSString *)fileType modelConfiguration:(NSString *)configuration storeOptions:(NSDictionary *)storeOptions error:(NSError **)error
{
    return 0;
}

- (NSString *)persistentStoreTypeForFileType:(NSString *)fileType
{
    return nil;
}

- (BOOL)readAdditionalContentFromURL:(NSURL *)absoluteURL error:(NSError **)error
{
    return 0;
}

- (id)additionalContentForURL:(NSURL *)absoluteURL error:(NSError **)error
{
    return 0;
}

- (BOOL)writeAdditionalContent:(id)content toURL:(NSURL *)absoluteURL originalContentsURL:(NSURL *)absoluteOriginalContentsURL error:(NSError **)error
{
    return 0;
}

@end
