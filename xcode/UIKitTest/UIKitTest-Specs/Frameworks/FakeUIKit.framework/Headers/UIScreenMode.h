//
//  UIScreenMode.h
//  UIKit
//
//  Copyright (c) 2009-2014 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FakeUIKit/UIKitDefines.h>
#import <CoreGraphics/CoreGraphics.h>

NS_CLASS_AVAILABLE_IOS(3_2) @interface UIScreenMode : NSObject {
  @private
    id _mode;
}

@property(readonly,nonatomic) CGSize  size;             // The width and height in pixels
@property(readonly,nonatomic) CGFloat pixelAspectRatio; // The aspect ratio of a single pixel. The ratio is defined as X/Y.

@end
