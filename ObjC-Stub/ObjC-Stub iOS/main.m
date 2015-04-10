//
//  main.m
//  ObjC-Stub iOS
//
//  Created by Eric Chamberlain on 4/10/15.
//  Copyright (c) 2015 Upstart Illustration LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "MARTNSObject.h"
#import "RTMethod.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        for (RTMethod *method in [UIView rt_methods]) {
            NSLog(@"method (%@)", [method selectorName]);
        }
    }
}
