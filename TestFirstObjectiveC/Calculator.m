//
//  Calculator.m
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/7/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

// I decided to use doubleValue here just in case they pass in float numbers, but is that the right way to go?
// You pass multiple parameters by putting a : in between them.
- (NSNumber *)add:(NSNumber *)input01 :(NSNumber *)input02 {
    return @([input01 doubleValue] + [input02 doubleValue]);
}
- (NSNumber *)subtract:(NSNumber *)input01 :(NSNumber *)input02 {
    return @([input01 doubleValue] - [input02 doubleValue]);
}

// Oh, how I miss Ruby...[1,3,5,7,9].inject(:+)
- (NSNumber *)sum:(NSArray *)input01{
    NSNumber *total = @0;
    for (NSNumber *num in input01) {
        total = @([total doubleValue] + [num doubleValue]);
    }
    return total;
}
- (NSNumber *)multiply:(NSArray *)input01 {
    NSNumber *total = @1;
    for (NSNumber *num in input01) {
        total = @([total doubleValue] * [num doubleValue]);
    }
    return total;
}
- (NSNumber *)power:(NSNumber *)input01 :(NSNumber *)input02 {
    // have to use a native C function - pow
    return @(pow([input01 doubleValue], [input02 doubleValue]));
}
- (NSNumber *)factorial:(NSNumber *)input01 {
    if ([input01 integerValue] == 0 || [input01 integerValue] == 1) {
        return @1;
    } else {
        NSMutableArray *numsArray = [[NSMutableArray alloc] init];
        int i = 0;
        for (i = [input01 integerValue]; i > 0; i--) {
            [numsArray addObject:[NSNumber numberWithInt:i]];
        }
        // to call a method from within a class, use self
        return [self multiply:numsArray];
    }
}

@end
