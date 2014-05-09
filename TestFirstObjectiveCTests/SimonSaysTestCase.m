//
//  SimonSaysTestCase.m
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/8/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SimonSays.h"

@interface SimonSaysTestCase : XCTestCase

@property (strong) SimonSays *simon;

@end

@implementation SimonSaysTestCase

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _simon = [[SimonSays alloc] init];
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//    Simon Says
//
//    Topics
//
//    * functions
//    * strings
//    * default parameter values
//
//    Hints
//
//    When you make the second `repeat` test pass, you might break the **first**

- (void)testEchoMethod {
    XCTAssertEqualObjects([_simon echoString:@"hello"], @"hello", @"should echo hello");
    XCTAssertEqualObjects([_simon echoString:@"bye"], @"bye", @"should echo bye");
}

- (void)testShoutMethod {
    XCTAssertEqualObjects([_simon shoutString:@"hello"], @"HELLO", @"should shout hello");
    XCTAssertEqualObjects([_simon shoutString:@"hello world"], @"HELLO WORLD", @"should shout multiple words");
}

- (void)testRepeatMethods {
    XCTAssertEqualObjects([_simon repeat:@"hello"], @"hello", @"should repeat");
    XCTAssertEqualObjects([_simon repeatStringNumberOfTimes:@"hello" :@3], @"hello hello hello", @"should repeat a number of times");
}

- (void)testStartOfWordMethod {
    XCTAssertEqualObjects([_simon startOfWord:@"hello" :@1], @"h", @"returns the first letter");
    XCTAssertEqualObjects([_simon startOfWord:@"Bob" :@2], @"Bo", @"returns the first two letters");
    
    NSString *s = @"abcdefg";
    
    XCTAssertEqualObjects([_simon startOfWord:s :@2], @"abc", @"returns the first several letters");
}

- (void)testFirstWordMethod {
    XCTAssertEqualObjects([_simon firstWord:@"Hello World"], @"Hello", @"tells us the first word of 'Hello World' is 'Hello'");
    XCTAssertEqualObjects([_simon firstWord:@"oh dear"], @"oh", @"tells us the first word of 'oh dear' is 'oh'");
}

- (void)testTitleizeMethod {
    XCTAssertEqualObjects([_simon titilize:@"war and peace"], @"War and Peace", @"does capitalize 'little words' at the start of a title");
    XCTAssertEqualObjects([_simon titilize:@"the bridge over the river kwai"], @"The Bridge over the River Kwai", @"does capitalize 'little words' at the start of a title");
    XCTAssertEqualObjects([_simon titilize:@"jaws"], @"Jaws", @"capitalizes a word");
    XCTAssertEqualObjects([_simon titilize:@"david copperfield"], @"David Copperfield", @"capitalizes every word (aka title case)");
}

@end
