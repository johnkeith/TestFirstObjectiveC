//
//  TemperatureTestCase.m
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/7/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Temperature.h"

@interface TemperatureTestCase : XCTestCase

@end

@implementation TemperatureTestCase

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//    Topics:
//    * functions
//    * floating-point math
//
//    Hints
//
//    Remember that one degree fahrenheit is 5/9 of one degree celsius, and that the freezing point of water is 0 degrees celsius but 32 degrees fahrenheit.
//
//    In integer math, there **are no fractions**. So if you are using integer literals, you will be using integer math, which means, for example...
//
//    1 / 2 => 0
//
//    In floating point math, there **are** fractions. So...
//
//    1.0 / 2.0 => 0.5

// for ftoc method

- (void)testConvertsFreezingTemperature_ftoc {
    Temperature *temperature = [[Temperature alloc] init];
    XCTAssertEqualObjects([temperature ftoc:@32], @0, @"Should be 0");
}
- (void)testConvertsBoilingTemperature_ftoc {
    Temperature *temperature = [[Temperature alloc] init];
    XCTAssertEqualObjects([temperature ftoc:@212], @100, @"Should be 100");
}
- (void)testConvertsBodyTemperature_ftoc {
    Temperature *temperature = [[Temperature alloc] init];
    XCTAssertEqualObjects([temperature ftoc:@98.6], @37, @"Should be 37");
}
- (void)testConvertsArbitraryTemperature_ftoc {
    Temperature *temperature = [[Temperature alloc] init];
    XCTAssertEqualObjects([temperature ftoc:@68], @20, @"Should be 20");
}

// for ctof method

- (void)testConvertsFreezingTemperature_ctof {
    Temperature *temperature = [[Temperature alloc] init];
    XCTAssertEqualObjects([temperature ctof:@0], @32, @"Should be 32");
}
- (void)testConvertsBoilingTemperature_ctof {
    Temperature *temperature = [[Temperature alloc] init];
    XCTAssertEqualObjects([temperature ctof:@100], @212, @"Should be 212");
}
- (void)testConvertsBodyTemperature_ctof {
    Temperature *temperature = [[Temperature alloc] init];
    XCTAssertEqualObjects([temperature ctof:@20], @68, @"Should be 68");
}
- (void)testConvertsArbitraryTemperature_ctof {
    Temperature *temperature = [[Temperature alloc] init];
    XCTAssertEqualObjects([temperature ctof:@37], @98.6, @"Should be 98.6");
}

@end
