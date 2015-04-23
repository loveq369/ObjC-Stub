//
//  UIScreenEdgePanGestureRecognizer.h
//  Copyright (c) 2012-2014 Apple Inc. All rights reserved.
//

#import <FakeUIKit/UIGeometry.h>
#import <FakeUIKit/UIPanGestureRecognizer.h>

/*! This subclass of UIPanGestureRecognizer only recognizes if the user slides their finger
    in from the bezel on the specified edge. */
NS_CLASS_AVAILABLE_IOS(7_0) @interface UIScreenEdgePanGestureRecognizer : UIPanGestureRecognizer
@property (readwrite, nonatomic, assign) UIRectEdge edges; //< The edges on which this gesture recognizes, relative to the current interface orientation
@end
