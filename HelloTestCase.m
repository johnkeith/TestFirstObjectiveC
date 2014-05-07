//
//  HelloTestCase.m
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/7/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Hello.h"

@interface HelloTestCase : XCTestCase

@end

@implementation HelloTestCase

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


- (void)testHelloClassSaysHelloWorld {
    Hello *hello = [[Hello alloc] init];
    XCTAssertEqualObjects([hello sayHello], @"Hello World", @"Remember, your method does not need parameters for this test.");
}
- (void)testHelloClassSaysHelloToSomebody {
    Hello *hello = [[Hello alloc] init];
    
    //hello.greeting = @"Hello!";
    // the above is not correct - you cannot modifiy an NSMutableString just by declaring its value
    // hello.greeting = [NSMutableString stringWithString:@"Hello!"];
    
    // XCTAssertEqual(someone, @"Hello someone!", @"In this test, remember you are passing a parameter of to the method.");
    // The XCTAssertEqual method is does not work because it is only for C scalars, stucts, and unions
    
    XCTAssertEqualObjects([hello greetSomeone:@"someone"], @"Hello someone!", @"Hopefully...");
    XCTAssertEqualObjects([hello greetSomeone:@"Bob"], @"Hello Bob!", @"Saying hello!");
}

@end
