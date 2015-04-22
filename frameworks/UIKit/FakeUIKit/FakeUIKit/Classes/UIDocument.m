
#import "UIDocument.h"

@implementation UIDocument

- (instancetype)initWithFileURL:(NSURL *)url
{
    return [super init];
}

- (void)openWithCompletionHandler:(void (^)(BOOL success))completionHandler
{
    
}

- (void)closeWithCompletionHandler:(void (^)(BOOL success))completionHandler
{
    
}

- (BOOL)loadFromContents:(id)contents ofType:(NSString *)typeName error:(NSError **)outError
{
    return 0;
}

- (id)contentsForType:(NSString *)typeName error:(NSError **)outError
{
    return [super init];
}

- (void)disableEditing
{
    
}

- (void)enableEditing
{
    
}

- (BOOL)hasUnsavedChanges
{
    return 0;
}

- (void)updateChangeCount:(UIDocumentChangeKind)change
{
    
}

- (id)changeCountTokenForSaveOperation:(UIDocumentSaveOperation)saveOperation
{
    return [super init];
}

- (void)updateChangeCountWithToken:(id)changeCountToken forSaveOperation:(UIDocumentSaveOperation)saveOperation
{
    
}

- (void)saveToURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation completionHandler:(void (^)(BOOL success))completionHandler
{
    
}

- (void)autosaveWithCompletionHandler:(void (^)(BOOL success))completionHandler
{
    
}

- (NSString *)savingFileType
{
    return nil;
}

- (NSString *)fileNameExtensionForType:(NSString *)typeName saveOperation:(UIDocumentSaveOperation)saveOperation
{
    return nil;
}

- (BOOL)writeContents:(id)contents andAttributes:(NSDictionary *)additionalFileAttributes safelyToURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation error:(NSError **)outError
{
    return 0;
}

- (BOOL)writeContents:(id)contents toURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation originalContentsURL:(NSURL *)originalContentsURL error:(NSError **)outError
{
    return 0;
}

- (NSDictionary *)fileAttributesToWriteToURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation error:(NSError **)outError
{
    return nil;
}

- (BOOL)readFromURL:(NSURL *)url error:(NSError **)outError
{
    return 0;
}

- (void)performAsynchronousFileAccessUsingBlock:(void (^)(void))block
{
    
}

- (void)handleError:(NSError *)error userInteractionPermitted:(BOOL)userInteractionPermitted
{
    
}

- (void)finishedHandlingError:(NSError *)error recovered:(BOOL)recovered
{
    
}

- (void)userInteractionNoLongerPermittedForError:(NSError *)error
{
    
}

- (void)revertToContentsOfURL:(NSURL *)url completionHandler:(void (^)(BOOL success))completionHandler
{
    
}

@end

@implementation UIDocument (ActivityContinuation)

- (void) updateUserActivityState:(NSUserActivity *)userActivity
{
    
}

- (void) restoreUserActivityState:(NSUserActivity *)userActivity
{
    
}

@end
