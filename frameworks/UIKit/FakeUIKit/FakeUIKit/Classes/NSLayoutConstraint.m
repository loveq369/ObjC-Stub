
#import "NSLayoutConstraint.h"

@implementation NSLayoutConstraint

+ (NSArray *)constraintsWithVisualFormat:(NSString *)format options:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views
{
    return nil;
}

+(instancetype)constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    return [[self alloc] init];
}

+ (void)activateConstraints:(NSArray *)constraints
{
    
}

+ (void)deactivateConstraints:(NSArray *)constraints
{
    
}

@end

@implementation NSLayoutConstraint (NSIdentifier)

@end
