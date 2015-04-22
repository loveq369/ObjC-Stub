
#import "UITextChecker.h"

@implementation UITextChecker

- (NSRange)rangeOfMisspelledWordInString:(NSString *)stringToCheck range:(NSRange)range startingAt:(NSInteger)startingOffset wrap:(BOOL)wrapFlag language:(NSString *)language
{
    return 0;
}

- (NSArray *)guessesForWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language
{
    return nil;
}

- (NSArray *)completionsForPartialWordRange:(NSRange)range inString:(NSString *)string language:(NSString *)language
{
    return nil;
}

- (void)ignoreWord:(NSString *)wordToIgnore
{
    
}

- (NSArray *)ignoredWords
{
    return nil;
}

- (void)setIgnoredWords:(NSArray *)words
{
    
}

+ (void)learnWord:(NSString *)word
{
    
}

+ (BOOL)hasLearnedWord:(NSString *)word
{
    return 0;
}

+ (void)unlearnWord:(NSString *)word
{
    
}

+ (NSArray *)availableLanguages
{
    return nil;
}

@end
