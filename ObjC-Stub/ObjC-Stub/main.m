/**
 @copyright 2015 Upstart Illustration LLC. All rights reserved.
 */

#import <Foundation/Foundation.h>

#import "MARTNSObject.h"
#import "RTMethod.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (RTMethod *method in [NSObject rt_methods]) {
            NSLog(@"method (%@)", [method selectorName]);
        }
    }
    return 0;
}
