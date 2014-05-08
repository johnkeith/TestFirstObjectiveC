//
//  CalculatorTestCase.m
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/7/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface CalculatorTestCase : XCTestCase

@end

@implementation CalculatorTestCase

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

//    Topics
//
//    * functions
//    * math
//    * arrays
//    * iterating/looping
//
//    Calculator
//
//    you will build a simple calculator script with the following methods:
//
//    `add` takes two parameters and adds them
//
//    `subtract` takes two parameters and subtracts the second from the first
//
//    `sum` takes an *array* of parameters and adds them all together
//
//    Warning
//
//    You may not have enough knowledge yet to complete `sum`. You will probably
//    need to use **loops** (e.g. `while`) or **iterators** (e.g. `each`) to
//    get the tests to pass.
//
//    Bonus
//
//    There are also some bonus exercises for when you finish the regular ones. The bonus round will help teach you test-driven *development*, not simply test-guided *learning*.
//
//    Your mission, should you choose to accept it, is to write *tests* for three new methods:
//
//    * `multiply` which multiplies two numbers together
//    * `power` which raises one number to the power of another number
//    * `[factorial](http://en.wikipedia.org/wiki/Factorial)` (check Wikipedia if you forgot your high school math).

- (void)testAddMethod {
    Calculator *calc = [[Calculator alloc] init];

    XCTAssertEqualObjects([calc add:@0 :@0], @0, @"Should be none!");
    
    XCTAssertEqualObjects([calc add:@2 :@2], @4, @"Should be equal to 4!");
    
    XCTAssertEqualObjects([calc add:@2 :@6], @8, @"Should be equal to 8!");
}
- (void)testSubtractMethod {
    Calculator *calc = [[Calculator alloc] init];
    XCTAssertEqualObjects([calc subtract:@10 :@4], @6, @"Should be equal to 6!");
}

- (void)testSumMethod {
    Calculator *calc = [[Calculator alloc] init];
// why no nil at the end of this array?
    NSArray *testArray = @[@1,@3,@5,@7,@9];
    XCTAssertEqualObjects([calc sum:testArray], @25, @"Should be equal to 25!");
}
- (void)testMultiplyMethod {
    Calculator *calc = [[Calculator alloc] init];
    
    NSArray *testArray01 = @[@2, @4];
    NSArray *testArray02 = @[@2, @4, @2];
    
    XCTAssertEqualObjects([calc multiply:testArray01], @8, @"Should be equal to 8!");
    XCTAssertEqualObjects([calc multiply:testArray02], @16, @"Should be equal to 16!");
}
- (void)testPowerMethod {
    Calculator *calc = [[Calculator alloc] init];
    XCTAssertEqualObjects([calc power:@3 :@2], @9, @"Should be equal to 9!");
}
- (void)testFactorialMethod {
    Calculator *calc = [[Calculator alloc] init];
    XCTAssertEqualObjects([calc factorial:@1], @1, @"Should be equal to 1!");
    XCTAssertEqualObjects([calc factorial:@2], @2, @"Should be equal to 2!");
    XCTAssertEqualObjects([calc factorial:@5], @120, @"Should be equal to 120!");
    XCTAssertEqualObjects([calc factorial:@10], @3628800, @"Should be equal to 3628800!");
}

@end
