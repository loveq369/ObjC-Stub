//
//  UIStoryboard.h
//  UIKit
//
//  Copyright 2011-2012 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FakeUIKit/UIKitDefines.h>

NS_CLASS_AVAILABLE_IOS(5_0) @interface UIStoryboard : NSObject {
}

+ (UIStoryboard *)storyboardWithName:(NSString *)name bundle:(NSBundle *)storyboardBundleOrNil;

- (id)instantiateInitialViewController;
- (id)instantiateViewControllerWithIdentifier:(NSString *)identifier;

@end
