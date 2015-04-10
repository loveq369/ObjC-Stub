//
//  ObjC_Stub_iOSTests.m
//  ObjC-Stub iOSTests
//
//  Created by Eric Chamberlain on 4/10/15.
//  Copyright (c) 2015 Upstart Illustration LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface ObjC_Stub_iOSTests : XCTestCase

@end

@implementation ObjC_Stub_iOSTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
